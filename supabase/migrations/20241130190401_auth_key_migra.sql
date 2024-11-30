revoke delete on table "public"."user_roles" from "anon";

revoke insert on table "public"."user_roles" from "anon";

revoke references on table "public"."user_roles" from "anon";

revoke select on table "public"."user_roles" from "anon";

revoke trigger on table "public"."user_roles" from "anon";

revoke truncate on table "public"."user_roles" from "anon";

revoke update on table "public"."user_roles" from "anon";

revoke delete on table "public"."user_roles" from "authenticated";

revoke insert on table "public"."user_roles" from "authenticated";

revoke references on table "public"."user_roles" from "authenticated";

revoke select on table "public"."user_roles" from "authenticated";

revoke trigger on table "public"."user_roles" from "authenticated";

revoke truncate on table "public"."user_roles" from "authenticated";

revoke update on table "public"."user_roles" from "authenticated";

create table "public"."todos" (
    "id" uuid not null default uuid_generate_v4(),
    "content" text,
    "user_id" uuid
);


alter table "public"."todos" enable row level security;

CREATE UNIQUE INDEX todos_pkey ON public.todos USING btree (id);

alter table "public"."todos" add constraint "todos_pkey" PRIMARY KEY using index "todos_pkey";

alter table "public"."todos" add constraint "todos_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) not valid;

alter table "public"."todos" validate constraint "todos_user_id_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.custom_access_token_hook(event jsonb)
 RETURNS jsonb
 LANGUAGE plpgsql
 STABLE
AS $function$declare
    claims jsonb;
    user_role public.role_enum;
  begin
       -- Fetch the user role in the user_roles table
    select role into user_role from public.user_roles where user_id = (event->>'user_id')::uuid;

    claims := event->'claims';

    if user_role is not null then
      -- Set the claim
      claims := jsonb_set(claims, '{user_role}', to_jsonb(user_role));
    else
      claims := jsonb_set(claims, '{user_role}', 'null');
    end if;

    -- Update the 'claims' object in the original event
    event := jsonb_set(event, '{claims}', claims);

    -- Return the modified or original event
     return event;
  end;$function$
;

grant delete on table "public"."todos" to "anon";

grant insert on table "public"."todos" to "anon";

grant references on table "public"."todos" to "anon";

grant select on table "public"."todos" to "anon";

grant trigger on table "public"."todos" to "anon";

grant truncate on table "public"."todos" to "anon";

grant update on table "public"."todos" to "anon";

grant delete on table "public"."todos" to "authenticated";

grant insert on table "public"."todos" to "authenticated";

grant references on table "public"."todos" to "authenticated";

grant select on table "public"."todos" to "authenticated";

grant trigger on table "public"."todos" to "authenticated";

grant truncate on table "public"."todos" to "authenticated";

grant update on table "public"."todos" to "authenticated";

grant delete on table "public"."todos" to "service_role";

grant insert on table "public"."todos" to "service_role";

grant references on table "public"."todos" to "service_role";

grant select on table "public"."todos" to "service_role";

grant trigger on table "public"."todos" to "service_role";

grant truncate on table "public"."todos" to "service_role";

grant update on table "public"."todos" to "service_role";

grant delete on table "public"."user_roles" to "PUBLIC";

grant insert on table "public"."user_roles" to "PUBLIC";

grant references on table "public"."user_roles" to "PUBLIC";

grant select on table "public"."user_roles" to "PUBLIC";

grant trigger on table "public"."user_roles" to "PUBLIC";

grant truncate on table "public"."user_roles" to "PUBLIC";

grant update on table "public"."user_roles" to "PUBLIC";

grant delete on table "public"."user_roles" to "supabase_auth_admin";

grant insert on table "public"."user_roles" to "supabase_auth_admin";

grant references on table "public"."user_roles" to "supabase_auth_admin";

grant select on table "public"."user_roles" to "supabase_auth_admin";

grant trigger on table "public"."user_roles" to "supabase_auth_admin";

grant truncate on table "public"."user_roles" to "supabase_auth_admin";

grant update on table "public"."user_roles" to "supabase_auth_admin";

create policy "admin_policy"
on "public"."todos"
as permissive
for all
to public
using ((((auth.jwt() ->> 'user_role'::text))::role_enum = 'admin'::role_enum));


create policy "user_delete_policy"
on "public"."todos"
as permissive
for delete
to public
using (((((auth.jwt() ->> 'user_role'::text))::role_enum = 'user'::role_enum) AND (user_id = ((auth.jwt() ->> 'user_id'::text))::uuid)));


create policy "Allow auth admin to read user roles"
on "public"."user_roles"
as permissive
for select
to supabase_auth_admin
using (true);



