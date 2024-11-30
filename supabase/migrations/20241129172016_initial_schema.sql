create extension if not exists "vector" with schema "extensions";


create schema if not exists "postgis";

create extension if not exists "postgis" with schema "postgis" version '3.3.2';

create type "public"."role_enum" as enum ('user', 'admin', 'guest');

create table "public"."address" (
    "address_id" uuid not null default uuid_generate_v4(),
    "street_number" text,
    "street" text,
    "district" text,
    "city" text,
    "country" text,
    "location" postgis.geography(Point,4326),
    "created_at" timestamp without time zone default CURRENT_TIMESTAMP
);


create table "public"."user_profiles" (
    "profile_id" uuid not null default uuid_generate_v4(),
    "user_id" uuid,
    "fullname" text not null,
    "address_id" uuid,
    "created_at" timestamp without time zone default CURRENT_TIMESTAMP
);


create table "public"."user_roles" (
    "user_id" uuid not null,
    "role" role_enum not null default 'user'::role_enum
);


CREATE UNIQUE INDEX address_pkey ON public.address USING btree (address_id);

CREATE UNIQUE INDEX roles_pkey ON public.user_roles USING btree (user_id);

CREATE UNIQUE INDEX userprofile_pkey ON public.user_profiles USING btree (profile_id);

alter table "public"."address" add constraint "address_pkey" PRIMARY KEY using index "address_pkey";

alter table "public"."user_profiles" add constraint "userprofile_pkey" PRIMARY KEY using index "userprofile_pkey";

alter table "public"."user_roles" add constraint "roles_pkey" PRIMARY KEY using index "roles_pkey";

alter table "public"."user_profiles" add constraint "userprofile_address_id_fkey" FOREIGN KEY (address_id) REFERENCES address(address_id) not valid;

alter table "public"."user_profiles" validate constraint "userprofile_address_id_fkey";

alter table "public"."user_profiles" add constraint "userprofile_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE not valid;

alter table "public"."user_profiles" validate constraint "userprofile_user_id_fkey";

alter table "public"."user_roles" add constraint "roles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE not valid;

alter table "public"."user_roles" validate constraint "roles_user_id_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.custom_access_token_hook(event jsonb)
 RETURNS jsonb
 LANGUAGE plpgsql
 STABLE
AS $function$
  declare
    claims jsonb;
    user_role public.user_roles;
  begin
    -- Fetch the user role from the user_roles table
    select role into user_role from public.user_roles where user_id = (event->>'user_id')::uuid;

    -- Get the current claims from the event
    claims := event->'claims';

    -- If the user has a role, add it to the claims; otherwise, set it as null
    if user_role is not null then
      claims := jsonb_set(claims, '{user_role}', to_jsonb(user_role));
    else
      claims := jsonb_set(claims, '{user_role}', 'null');
    end if;

    -- Update the 'claims' object in the event
    event := jsonb_set(event, '{claims}', claims);

    -- Return the modified event (which includes the role claim)
    return event;
  end;
$function$
;

grant delete on table "public"."address" to "anon";

grant insert on table "public"."address" to "anon";

grant references on table "public"."address" to "anon";

grant select on table "public"."address" to "anon";

grant trigger on table "public"."address" to "anon";

grant truncate on table "public"."address" to "anon";

grant update on table "public"."address" to "anon";

grant delete on table "public"."address" to "authenticated";

grant insert on table "public"."address" to "authenticated";

grant references on table "public"."address" to "authenticated";

grant select on table "public"."address" to "authenticated";

grant trigger on table "public"."address" to "authenticated";

grant truncate on table "public"."address" to "authenticated";

grant update on table "public"."address" to "authenticated";

grant delete on table "public"."address" to "service_role";

grant insert on table "public"."address" to "service_role";

grant references on table "public"."address" to "service_role";

grant select on table "public"."address" to "service_role";

grant trigger on table "public"."address" to "service_role";

grant truncate on table "public"."address" to "service_role";

grant update on table "public"."address" to "service_role";

grant delete on table "public"."user_profiles" to "anon";

grant insert on table "public"."user_profiles" to "anon";

grant references on table "public"."user_profiles" to "anon";

grant select on table "public"."user_profiles" to "anon";

grant trigger on table "public"."user_profiles" to "anon";

grant truncate on table "public"."user_profiles" to "anon";

grant update on table "public"."user_profiles" to "anon";

grant delete on table "public"."user_profiles" to "authenticated";

grant insert on table "public"."user_profiles" to "authenticated";

grant references on table "public"."user_profiles" to "authenticated";

grant select on table "public"."user_profiles" to "authenticated";

grant trigger on table "public"."user_profiles" to "authenticated";

grant truncate on table "public"."user_profiles" to "authenticated";

grant update on table "public"."user_profiles" to "authenticated";

grant delete on table "public"."user_profiles" to "service_role";

grant insert on table "public"."user_profiles" to "service_role";

grant references on table "public"."user_profiles" to "service_role";

grant select on table "public"."user_profiles" to "service_role";

grant trigger on table "public"."user_profiles" to "service_role";

grant truncate on table "public"."user_profiles" to "service_role";

grant update on table "public"."user_profiles" to "service_role";

grant delete on table "public"."user_roles" to "anon";

grant insert on table "public"."user_roles" to "anon";

grant references on table "public"."user_roles" to "anon";

grant select on table "public"."user_roles" to "anon";

grant trigger on table "public"."user_roles" to "anon";

grant truncate on table "public"."user_roles" to "anon";

grant update on table "public"."user_roles" to "anon";

grant delete on table "public"."user_roles" to "authenticated";

grant insert on table "public"."user_roles" to "authenticated";

grant references on table "public"."user_roles" to "authenticated";

grant select on table "public"."user_roles" to "authenticated";

grant trigger on table "public"."user_roles" to "authenticated";

grant truncate on table "public"."user_roles" to "authenticated";

grant update on table "public"."user_roles" to "authenticated";

grant delete on table "public"."user_roles" to "service_role";

grant insert on table "public"."user_roles" to "service_role";

grant references on table "public"."user_roles" to "service_role";

grant select on table "public"."user_roles" to "service_role";

grant trigger on table "public"."user_roles" to "service_role";

grant truncate on table "public"."user_roles" to "service_role";

grant update on table "public"."user_roles" to "service_role";


