create type "public"."issue_type" as enum ('PANDEMIC', 'DISASTER');

drop policy "admin_policy" on "public"."todos";

drop policy "user_delete_policy" on "public"."todos";

revoke delete on table "public"."skill" from "anon";

revoke insert on table "public"."skill" from "anon";

revoke references on table "public"."skill" from "anon";

revoke select on table "public"."skill" from "anon";

revoke trigger on table "public"."skill" from "anon";

revoke truncate on table "public"."skill" from "anon";

revoke update on table "public"."skill" from "anon";

revoke delete on table "public"."skill" from "authenticated";

revoke insert on table "public"."skill" from "authenticated";

revoke references on table "public"."skill" from "authenticated";

revoke select on table "public"."skill" from "authenticated";

revoke trigger on table "public"."skill" from "authenticated";

revoke truncate on table "public"."skill" from "authenticated";

revoke update on table "public"."skill" from "authenticated";

revoke delete on table "public"."skill" from "service_role";

revoke insert on table "public"."skill" from "service_role";

revoke references on table "public"."skill" from "service_role";

revoke select on table "public"."skill" from "service_role";

revoke trigger on table "public"."skill" from "service_role";

revoke truncate on table "public"."skill" from "service_role";

revoke update on table "public"."skill" from "service_role";

revoke delete on table "public"."todos" from "anon";

revoke insert on table "public"."todos" from "anon";

revoke references on table "public"."todos" from "anon";

revoke select on table "public"."todos" from "anon";

revoke trigger on table "public"."todos" from "anon";

revoke truncate on table "public"."todos" from "anon";

revoke update on table "public"."todos" from "anon";

revoke delete on table "public"."todos" from "authenticated";

revoke insert on table "public"."todos" from "authenticated";

revoke references on table "public"."todos" from "authenticated";

revoke select on table "public"."todos" from "authenticated";

revoke trigger on table "public"."todos" from "authenticated";

revoke truncate on table "public"."todos" from "authenticated";

revoke update on table "public"."todos" from "authenticated";

revoke delete on table "public"."todos" from "service_role";

revoke insert on table "public"."todos" from "service_role";

revoke references on table "public"."todos" from "service_role";

revoke select on table "public"."todos" from "service_role";

revoke trigger on table "public"."todos" from "service_role";

revoke truncate on table "public"."todos" from "service_role";

revoke update on table "public"."todos" from "service_role";

revoke delete on table "public"."userskills" from "anon";

revoke insert on table "public"."userskills" from "anon";

revoke references on table "public"."userskills" from "anon";

revoke select on table "public"."userskills" from "anon";

revoke trigger on table "public"."userskills" from "anon";

revoke truncate on table "public"."userskills" from "anon";

revoke update on table "public"."userskills" from "anon";

revoke delete on table "public"."userskills" from "authenticated";

revoke insert on table "public"."userskills" from "authenticated";

revoke references on table "public"."userskills" from "authenticated";

revoke select on table "public"."userskills" from "authenticated";

revoke trigger on table "public"."userskills" from "authenticated";

revoke truncate on table "public"."userskills" from "authenticated";

revoke update on table "public"."userskills" from "authenticated";

revoke delete on table "public"."userskills" from "service_role";

revoke insert on table "public"."userskills" from "service_role";

revoke references on table "public"."userskills" from "service_role";

revoke select on table "public"."userskills" from "service_role";

revoke trigger on table "public"."userskills" from "service_role";

revoke truncate on table "public"."userskills" from "service_role";

revoke update on table "public"."userskills" from "service_role";

alter table "public"."notification" drop constraint "notification_user_id_fkey";

alter table "public"."task" drop constraint "task_address_id_fkey";

alter table "public"."todos" drop constraint "todos_user_id_fkey";

alter table "public"."userskills" drop constraint "userskills_skill_id_fkey";

alter table "public"."userskills" drop constraint "userskills_user_id_fkey";

alter table "public"."skill" drop constraint "skill_pkey";

alter table "public"."todos" drop constraint "todos_pkey";

alter table "public"."userskills" drop constraint "userskills_pkey";

drop index if exists "public"."skill_pkey";

drop index if exists "public"."todos_pkey";

drop index if exists "public"."userskills_pkey";

drop table "public"."skill";

drop table "public"."todos";

drop table "public"."userskills";

create table "public"."geometries" (
    "name" character varying,
    "geom" postgis.geometry
);


create table "public"."issue_event" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "place_id" uuid,
    "title" text,
    "description" text,
    "label" text
);


create table "public"."notification_user" (
    "notification_id" uuid not null,
    "to_user_id" uuid not null
);


alter table "public"."notification_user" enable row level security;

create table "public"."place" (
    "id" uuid not null default uuid_generate_v4(),
    "created_at" timestamp with time zone not null default now(),
    "place_type" text,
    "additional_info" json,
    "location" postgis.geography,
    "radius" double precision
);


create table "public"."report" (
    "id" uuid not null default uuid_generate_v4(),
    "created_at" timestamp with time zone not null default now(),
    "urgency" urgency,
    "meta_data" json,
    "title" text,
    "report_type" text,
    "content" text,
    "location" postgis.geography
);


create table "public"."user_notification" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "user_id" uuid default gen_random_uuid(),
    "notification_id" uuid default gen_random_uuid()
);


alter table "public"."notification" drop column "user_id";

alter table "public"."notification" alter column "content" drop not null;

alter table "public"."notification" alter column "sendtype" drop not null;

alter table "public"."notification" alter column "title" drop not null;

alter table "public"."notification" alter column "type" drop not null;

alter table "public"."task" drop column "address_id";

alter table "public"."user_profiles" add column "email" character varying not null;

CREATE UNIQUE INDEX issue_event_pkey ON public.issue_event USING btree (id);

CREATE UNIQUE INDEX notification_user_pkey ON public.notification_user USING btree (notification_id, to_user_id);

CREATE UNIQUE INDEX places_pkey ON public.place USING btree (id);

CREATE UNIQUE INDEX report_pkey ON public.report USING btree (id);

CREATE UNIQUE INDEX user_notification_pkey ON public.user_notification USING btree (id);

CREATE UNIQUE INDEX user_profiles_email_key ON public.user_profiles USING btree (email);

alter table "public"."issue_event" add constraint "issue_event_pkey" PRIMARY KEY using index "issue_event_pkey";

alter table "public"."notification_user" add constraint "notification_user_pkey" PRIMARY KEY using index "notification_user_pkey";

alter table "public"."place" add constraint "places_pkey" PRIMARY KEY using index "places_pkey";

alter table "public"."report" add constraint "report_pkey" PRIMARY KEY using index "report_pkey";

alter table "public"."user_notification" add constraint "user_notification_pkey" PRIMARY KEY using index "user_notification_pkey";

alter table "public"."issue_event" add constraint "issue_event_place_id_fkey" FOREIGN KEY (place_id) REFERENCES place(id) not valid;

alter table "public"."issue_event" validate constraint "issue_event_place_id_fkey";

alter table "public"."notification_user" add constraint "notification_user_notification_id_fkey" FOREIGN KEY (notification_id) REFERENCES notification(id) ON DELETE CASCADE not valid;

alter table "public"."notification_user" validate constraint "notification_user_notification_id_fkey";

alter table "public"."notification_user" add constraint "notification_user_to_user_id_fkey" FOREIGN KEY (to_user_id) REFERENCES auth.users(id) ON DELETE CASCADE not valid;

alter table "public"."notification_user" validate constraint "notification_user_to_user_id_fkey";

alter table "public"."user_notification" add constraint "user_notification_notification_id_fkey" FOREIGN KEY (notification_id) REFERENCES notification(id) not valid;

alter table "public"."user_notification" validate constraint "user_notification_notification_id_fkey";

alter table "public"."user_notification" add constraint "user_notification_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."user_notification" validate constraint "user_notification_user_id_fkey";

alter table "public"."user_profiles" add constraint "user_profiles_email_key" UNIQUE using index "user_profiles_email_key";

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

grant delete on table "public"."geometries" to "anon";

grant insert on table "public"."geometries" to "anon";

grant references on table "public"."geometries" to "anon";

grant select on table "public"."geometries" to "anon";

grant trigger on table "public"."geometries" to "anon";

grant truncate on table "public"."geometries" to "anon";

grant update on table "public"."geometries" to "anon";

grant delete on table "public"."geometries" to "authenticated";

grant insert on table "public"."geometries" to "authenticated";

grant references on table "public"."geometries" to "authenticated";

grant select on table "public"."geometries" to "authenticated";

grant trigger on table "public"."geometries" to "authenticated";

grant truncate on table "public"."geometries" to "authenticated";

grant update on table "public"."geometries" to "authenticated";

grant delete on table "public"."geometries" to "service_role";

grant insert on table "public"."geometries" to "service_role";

grant references on table "public"."geometries" to "service_role";

grant select on table "public"."geometries" to "service_role";

grant trigger on table "public"."geometries" to "service_role";

grant truncate on table "public"."geometries" to "service_role";

grant update on table "public"."geometries" to "service_role";

grant delete on table "public"."issue_event" to "anon";

grant insert on table "public"."issue_event" to "anon";

grant references on table "public"."issue_event" to "anon";

grant select on table "public"."issue_event" to "anon";

grant trigger on table "public"."issue_event" to "anon";

grant truncate on table "public"."issue_event" to "anon";

grant update on table "public"."issue_event" to "anon";

grant delete on table "public"."issue_event" to "authenticated";

grant insert on table "public"."issue_event" to "authenticated";

grant references on table "public"."issue_event" to "authenticated";

grant select on table "public"."issue_event" to "authenticated";

grant trigger on table "public"."issue_event" to "authenticated";

grant truncate on table "public"."issue_event" to "authenticated";

grant update on table "public"."issue_event" to "authenticated";

grant delete on table "public"."issue_event" to "service_role";

grant insert on table "public"."issue_event" to "service_role";

grant references on table "public"."issue_event" to "service_role";

grant select on table "public"."issue_event" to "service_role";

grant trigger on table "public"."issue_event" to "service_role";

grant truncate on table "public"."issue_event" to "service_role";

grant update on table "public"."issue_event" to "service_role";

grant delete on table "public"."notification_user" to "anon";

grant insert on table "public"."notification_user" to "anon";

grant references on table "public"."notification_user" to "anon";

grant select on table "public"."notification_user" to "anon";

grant trigger on table "public"."notification_user" to "anon";

grant truncate on table "public"."notification_user" to "anon";

grant update on table "public"."notification_user" to "anon";

grant delete on table "public"."notification_user" to "authenticated";

grant insert on table "public"."notification_user" to "authenticated";

grant references on table "public"."notification_user" to "authenticated";

grant select on table "public"."notification_user" to "authenticated";

grant trigger on table "public"."notification_user" to "authenticated";

grant truncate on table "public"."notification_user" to "authenticated";

grant update on table "public"."notification_user" to "authenticated";

grant delete on table "public"."notification_user" to "service_role";

grant insert on table "public"."notification_user" to "service_role";

grant references on table "public"."notification_user" to "service_role";

grant select on table "public"."notification_user" to "service_role";

grant trigger on table "public"."notification_user" to "service_role";

grant truncate on table "public"."notification_user" to "service_role";

grant update on table "public"."notification_user" to "service_role";

grant delete on table "public"."place" to "anon";

grant insert on table "public"."place" to "anon";

grant references on table "public"."place" to "anon";

grant select on table "public"."place" to "anon";

grant trigger on table "public"."place" to "anon";

grant truncate on table "public"."place" to "anon";

grant update on table "public"."place" to "anon";

grant delete on table "public"."place" to "authenticated";

grant insert on table "public"."place" to "authenticated";

grant references on table "public"."place" to "authenticated";

grant select on table "public"."place" to "authenticated";

grant trigger on table "public"."place" to "authenticated";

grant truncate on table "public"."place" to "authenticated";

grant update on table "public"."place" to "authenticated";

grant delete on table "public"."place" to "service_role";

grant insert on table "public"."place" to "service_role";

grant references on table "public"."place" to "service_role";

grant select on table "public"."place" to "service_role";

grant trigger on table "public"."place" to "service_role";

grant truncate on table "public"."place" to "service_role";

grant update on table "public"."place" to "service_role";

grant delete on table "public"."report" to "anon";

grant insert on table "public"."report" to "anon";

grant references on table "public"."report" to "anon";

grant select on table "public"."report" to "anon";

grant trigger on table "public"."report" to "anon";

grant truncate on table "public"."report" to "anon";

grant update on table "public"."report" to "anon";

grant delete on table "public"."report" to "authenticated";

grant insert on table "public"."report" to "authenticated";

grant references on table "public"."report" to "authenticated";

grant select on table "public"."report" to "authenticated";

grant trigger on table "public"."report" to "authenticated";

grant truncate on table "public"."report" to "authenticated";

grant update on table "public"."report" to "authenticated";

grant delete on table "public"."report" to "service_role";

grant insert on table "public"."report" to "service_role";

grant references on table "public"."report" to "service_role";

grant select on table "public"."report" to "service_role";

grant trigger on table "public"."report" to "service_role";

grant truncate on table "public"."report" to "service_role";

grant update on table "public"."report" to "service_role";

grant delete on table "public"."user_notification" to "anon";

grant insert on table "public"."user_notification" to "anon";

grant references on table "public"."user_notification" to "anon";

grant select on table "public"."user_notification" to "anon";

grant trigger on table "public"."user_notification" to "anon";

grant truncate on table "public"."user_notification" to "anon";

grant update on table "public"."user_notification" to "anon";

grant delete on table "public"."user_notification" to "authenticated";

grant insert on table "public"."user_notification" to "authenticated";

grant references on table "public"."user_notification" to "authenticated";

grant select on table "public"."user_notification" to "authenticated";

grant trigger on table "public"."user_notification" to "authenticated";

grant truncate on table "public"."user_notification" to "authenticated";

grant update on table "public"."user_notification" to "authenticated";

grant delete on table "public"."user_notification" to "service_role";

grant insert on table "public"."user_notification" to "service_role";

grant references on table "public"."user_notification" to "service_role";

grant select on table "public"."user_notification" to "service_role";

grant trigger on table "public"."user_notification" to "service_role";

grant truncate on table "public"."user_notification" to "service_role";

grant update on table "public"."user_notification" to "service_role";


