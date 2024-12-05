create type "public"."visibility_enum" as enum ('public', 'private', 'restricted');

create sequence "public"."documents_id_seq";

revoke delete on table "public"."donation" from "anon";

revoke insert on table "public"."donation" from "anon";

revoke references on table "public"."donation" from "anon";

revoke select on table "public"."donation" from "anon";

revoke trigger on table "public"."donation" from "anon";

revoke truncate on table "public"."donation" from "anon";

revoke update on table "public"."donation" from "anon";

revoke delete on table "public"."donation" from "authenticated";

revoke insert on table "public"."donation" from "authenticated";

revoke references on table "public"."donation" from "authenticated";

revoke select on table "public"."donation" from "authenticated";

revoke trigger on table "public"."donation" from "authenticated";

revoke truncate on table "public"."donation" from "authenticated";

revoke update on table "public"."donation" from "authenticated";

revoke delete on table "public"."donation" from "service_role";

revoke insert on table "public"."donation" from "service_role";

revoke references on table "public"."donation" from "service_role";

revoke select on table "public"."donation" from "service_role";

revoke trigger on table "public"."donation" from "service_role";

revoke truncate on table "public"."donation" from "service_role";

revoke update on table "public"."donation" from "service_role";

revoke delete on table "public"."geometries" from "anon";

revoke insert on table "public"."geometries" from "anon";

revoke references on table "public"."geometries" from "anon";

revoke select on table "public"."geometries" from "anon";

revoke trigger on table "public"."geometries" from "anon";

revoke truncate on table "public"."geometries" from "anon";

revoke update on table "public"."geometries" from "anon";

revoke delete on table "public"."geometries" from "authenticated";

revoke insert on table "public"."geometries" from "authenticated";

revoke references on table "public"."geometries" from "authenticated";

revoke select on table "public"."geometries" from "authenticated";

revoke trigger on table "public"."geometries" from "authenticated";

revoke truncate on table "public"."geometries" from "authenticated";

revoke update on table "public"."geometries" from "authenticated";

revoke delete on table "public"."geometries" from "service_role";

revoke insert on table "public"."geometries" from "service_role";

revoke references on table "public"."geometries" from "service_role";

revoke select on table "public"."geometries" from "service_role";

revoke trigger on table "public"."geometries" from "service_role";

revoke truncate on table "public"."geometries" from "service_role";

revoke update on table "public"."geometries" from "service_role";

revoke delete on table "public"."notification_user" from "anon";

revoke insert on table "public"."notification_user" from "anon";

revoke references on table "public"."notification_user" from "anon";

revoke select on table "public"."notification_user" from "anon";

revoke trigger on table "public"."notification_user" from "anon";

revoke truncate on table "public"."notification_user" from "anon";

revoke update on table "public"."notification_user" from "anon";

revoke delete on table "public"."notification_user" from "authenticated";

revoke insert on table "public"."notification_user" from "authenticated";

revoke references on table "public"."notification_user" from "authenticated";

revoke select on table "public"."notification_user" from "authenticated";

revoke trigger on table "public"."notification_user" from "authenticated";

revoke truncate on table "public"."notification_user" from "authenticated";

revoke update on table "public"."notification_user" from "authenticated";

revoke delete on table "public"."notification_user" from "service_role";

revoke insert on table "public"."notification_user" from "service_role";

revoke references on table "public"."notification_user" from "service_role";

revoke select on table "public"."notification_user" from "service_role";

revoke trigger on table "public"."notification_user" from "service_role";

revoke truncate on table "public"."notification_user" from "service_role";

revoke update on table "public"."notification_user" from "service_role";

alter table "public"."notification_user" drop constraint "notification_user_notification_id_fkey";

alter table "public"."notification_user" drop constraint "notification_user_to_user_id_fkey";

alter table "public"."report" drop constraint "report_address_id_fkey";

alter table "public"."task" drop constraint "task_address_id_fkey";

alter table "public"."user_profiles" drop constraint "user_profiles_email_key";

alter table "public"."user_profiles" drop constraint "user_profiles_phone_key";

drop function if exists "public"."get_places_with_lat_lon"();

alter table "public"."donation" drop constraint "donation_pkey";

alter table "public"."notification_user" drop constraint "notification_user_pkey";

alter table "public"."user_notification" drop constraint "user_notification_pkey";

drop index if exists "public"."donation_pkey";

drop index if exists "public"."notification_user_pkey";

drop index if exists "public"."place_geo_index";

drop index if exists "public"."user_profiles_email_key";

drop index if exists "public"."user_profiles_phone_key";

drop index if exists "public"."user_notification_pkey";

drop table "public"."donation";

drop table "public"."geometries";

drop table "public"."notification_user";

create table "public"."documents" (
    "id" integer not null default nextval('documents_id_seq'::regclass),
    "visibility" visibility_enum not null default 'public'::visibility_enum,
    "category" text not null,
    "title" text not null,
    "content" text not null,
    "embedding" vector(384),
    "created_at" timestamp without time zone default now(),
    "updated_at" timestamp without time zone default now()
);


alter table "public"."address" drop column "latitude";

alter table "public"."address" drop column "longitude";

alter table "public"."address" alter column "created_at" set default CURRENT_TIMESTAMP;

alter table "public"."issue_event" enable row level security;

alter table "public"."notification" drop column "created_at";

alter table "public"."place" drop column "lattitude";

alter table "public"."place" drop column "longitude";

alter table "public"."report" drop column "address_id";

alter table "public"."report" add column "location" postgis.geography;

alter table "public"."task" drop column "address_id";

alter table "public"."task" drop column "end_date";

alter table "public"."task" drop column "start_date";

alter table "public"."task" drop column "task_status";

alter table "public"."task" add column "enddate" timestamp without time zone not null;

alter table "public"."task" add column "startdate" timestamp without time zone not null;

alter table "public"."task" add column "taskstatus" taskstatus not null;

alter table "public"."user_notification" add column "created_at" timestamp with time zone not null default now();

alter table "public"."user_notification" add column "id" uuid not null default gen_random_uuid();

alter table "public"."user_notification" alter column "notification_id" drop not null;

alter table "public"."user_notification" alter column "user_id" drop not null;

alter table "public"."user_profiles" drop column "email";

alter table "public"."user_profiles" drop column "phone";

alter table "public"."volunteerprofiles" alter column "skills" drop not null;

alter table "public"."volunteerprofiles" alter column "skills" set data type uuid[] using "skills"::uuid[];

alter table "public"."volunteerprofiles" alter column "user_id" drop not null;

alter sequence "public"."documents_id_seq" owned by "public"."documents"."id";

CREATE UNIQUE INDEX documents_pkey ON public.documents USING btree (id);

CREATE UNIQUE INDEX user_notification_pkey ON public.user_notification USING btree (id);

alter table "public"."documents" add constraint "documents_pkey" PRIMARY KEY using index "documents_pkey";

alter table "public"."user_notification" add constraint "user_notification_pkey" PRIMARY KEY using index "user_notification_pkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.find_docs_by_vector(query_vector vector, limit_count integer, visibility_filter visibility_enum DEFAULT 'public'::visibility_enum, category_filter text DEFAULT NULL::text)
 RETURNS TABLE(id integer, visibility visibility_enum, category text, title text, content text, similarity double precision)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT 
        id, 
        visibility, 
        category, 
        title, 
        content, 
        embedding <=> query_vector as similarity
    FROM documents
    WHERE visibility = visibility_filter
    AND (category_filter IS NULL OR category = category_filter)
    ORDER BY similarity
    LIMIT limit_count;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.index_doc(visibility visibility_enum, category text, title text, content text, embedding vector, language text DEFAULT 'en'::text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    INSERT INTO documents (visibility, category, title, content, embedding, language)
    VALUES (visibility, category, title, content, embedding, language);
END;
$function$
;

grant delete on table "public"."documents" to "anon";

grant insert on table "public"."documents" to "anon";

grant references on table "public"."documents" to "anon";

grant select on table "public"."documents" to "anon";

grant trigger on table "public"."documents" to "anon";

grant truncate on table "public"."documents" to "anon";

grant update on table "public"."documents" to "anon";

grant delete on table "public"."documents" to "authenticated";

grant insert on table "public"."documents" to "authenticated";

grant references on table "public"."documents" to "authenticated";

grant select on table "public"."documents" to "authenticated";

grant trigger on table "public"."documents" to "authenticated";

grant truncate on table "public"."documents" to "authenticated";

grant update on table "public"."documents" to "authenticated";

grant delete on table "public"."documents" to "service_role";

grant insert on table "public"."documents" to "service_role";

grant references on table "public"."documents" to "service_role";

grant select on table "public"."documents" to "service_role";

grant trigger on table "public"."documents" to "service_role";

grant truncate on table "public"."documents" to "service_role";

grant update on table "public"."documents" to "service_role";


