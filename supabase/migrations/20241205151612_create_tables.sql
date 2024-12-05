

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






CREATE SCHEMA IF NOT EXISTS "postgis";


ALTER SCHEMA "postgis" OWNER TO "postgres";


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "postgis" WITH SCHEMA "postgis";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA "extensions";






CREATE TYPE "public"."issue_type" AS ENUM (
    'PANDEMIC',
    'DISASTER'
);


ALTER TYPE "public"."issue_type" OWNER TO "postgres";


CREATE TYPE "public"."notificationtype" AS ENUM (
    'Emergency',
    'Normal'
);


ALTER TYPE "public"."notificationtype" OWNER TO "postgres";


CREATE TYPE "public"."role_enum" AS ENUM (
    'user',
    'admin',
    'guest'
);


ALTER TYPE "public"."role_enum" OWNER TO "postgres";


CREATE TYPE "public"."sendtype" AS ENUM (
    'All',
    'User',
    'Admin'
);


ALTER TYPE "public"."sendtype" OWNER TO "postgres";


CREATE TYPE "public"."statustype" AS ENUM (
    'PENDING',
    'IN_PROGRESS',
    'COMPLETED',
    'CANCELLED'
);


ALTER TYPE "public"."statustype" OWNER TO "postgres";


CREATE TYPE "public"."taskstatus" AS ENUM (
    'TODO',
    'DOING',
    'DONE',
    'FAILED'
);


ALTER TYPE "public"."taskstatus" OWNER TO "postgres";


CREATE TYPE "public"."urgency" AS ENUM (
    'SLOW',
    'MEDIUM',
    'HIGH'
);


ALTER TYPE "public"."urgency" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."custom_access_token_hook"("event" "jsonb") RETURNS "jsonb"
    LANGUAGE "plpgsql" STABLE
    AS $$declare
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
  end;$$;


ALTER FUNCTION "public"."custom_access_token_hook"("event" "jsonb") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_places_with_lat_lon"() RETURNS TABLE("place_type" "text", "location" "jsonb")
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  RETURN QUERY
  SELECT 
    p.place_type as place_type,
    jsonb_build_object(
      'lat', postgis.ST_Y(p.location::postgis.geometry),  -- Convert geography to geometry and extract latitude
      'lon', postgis.ST_X(p.location::postgis.geometry)   -- Convert geography to geometry and extract longitude
    ) AS location
  FROM place p;
END;
$$;


ALTER FUNCTION "public"."get_places_with_lat_lon"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."address" (
    "address_id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "street_number" "text",
    "street" "text",
    "district" "text",
    "city" "text",
    "location" "postgis"."geography"(Point,4326),
    "created_at" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "ward" "text",
    "latitude" real,
    "longitude" real
);


ALTER TABLE "public"."address" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."assignment" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "status" "public"."statustype" NOT NULL,
    "completiondate" timestamp without time zone,
    "assigneddate" timestamp without time zone NOT NULL,
    "feedback" "text",
    "task_id" "uuid",
    "volunteer_profile_id" "uuid"
);


ALTER TABLE "public"."assignment" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."donation" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "role" character varying,
    "fullname" character varying(255),
    "email" character varying(255),
    "phonenumber" character varying(15),
    "cango" boolean,
    "mask" integer,
    "rice" integer,
    "noodle" integer,
    "vegetable" integer,
    "meat" integer,
    "address" character varying
);


ALTER TABLE "public"."donation" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."geometries" (
    "name" character varying,
    "geom" "postgis"."geometry"
);


ALTER TABLE "public"."geometries" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."issue_event" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "place_id" "uuid",
    "title" "text",
    "description" "text",
    "label" "text"
);


ALTER TABLE "public"."issue_event" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notification" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text",
    "content" "text",
    "type" "public"."notificationtype",
    "sendtype" "public"."sendtype",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."notification" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notification_user" (
    "notification_id" "uuid" NOT NULL,
    "to_user_id" "uuid" NOT NULL
);


ALTER TABLE "public"."notification_user" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."place" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "place_type" "text",
    "additional_info" "json",
    "location" "postgis"."geography",
    "radius" double precision,
    "lattitude" real,
    "longitude" real
);


ALTER TABLE "public"."place" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."report" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "urgency" "public"."urgency",
    "meta_data" "json",
    "title" "text",
    "report_type" "text",
    "content" "text",
    "address_id" "uuid" NOT NULL
);


ALTER TABLE "public"."report" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."task" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text" NOT NULL,
    "description" "text" NOT NULL,
    "required_skills" "text",
    "urgency" "public"."urgency" NOT NULL,
    "address_id" "uuid" NOT NULL,
    "end_date" timestamp without time zone NOT NULL,
    "start_date" timestamp without time zone NOT NULL,
    "task_status" "public"."taskstatus" NOT NULL
);


ALTER TABLE "public"."task" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_notification" (
    "user_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "notification_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


ALTER TABLE "public"."user_notification" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_profiles" (
    "profile_id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "user_id" "uuid",
    "fullname" "text" NOT NULL,
    "address_id" "uuid",
    "created_at" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "citizen_id" "text",
    "email" character varying NOT NULL,
    "phone" character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE "public"."user_profiles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_roles" (
    "user_id" "uuid" NOT NULL,
    "role" "public"."role_enum" DEFAULT 'user'::"public"."role_enum" NOT NULL
);


ALTER TABLE "public"."user_roles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."volunteerprofiles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "assignedtask" "uuid"[],
    "skills" character varying
);


ALTER TABLE "public"."volunteerprofiles" OWNER TO "postgres";


ALTER TABLE ONLY "public"."address"
    ADD CONSTRAINT "address_pkey" PRIMARY KEY ("address_id");



ALTER TABLE ONLY "public"."assignment"
    ADD CONSTRAINT "assignment_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."donation"
    ADD CONSTRAINT "donation_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."issue_event"
    ADD CONSTRAINT "issue_event_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notification"
    ADD CONSTRAINT "notification_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notification_user"
    ADD CONSTRAINT "notification_user_pkey" PRIMARY KEY ("notification_id", "to_user_id");



ALTER TABLE ONLY "public"."place"
    ADD CONSTRAINT "places_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."report"
    ADD CONSTRAINT "report_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_roles"
    ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("user_id");



ALTER TABLE ONLY "public"."task"
    ADD CONSTRAINT "task_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_notification"
    ADD CONSTRAINT "user_notification_pkey" PRIMARY KEY ("user_id", "notification_id");



ALTER TABLE ONLY "public"."user_profiles"
    ADD CONSTRAINT "user_profiles_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."user_profiles"
    ADD CONSTRAINT "user_profiles_phone_key" UNIQUE ("phone");



ALTER TABLE ONLY "public"."user_profiles"
    ADD CONSTRAINT "userprofile_pkey" PRIMARY KEY ("profile_id");



ALTER TABLE ONLY "public"."volunteerprofiles"
    ADD CONSTRAINT "volunteerprofiles_pkey" PRIMARY KEY ("id");



CREATE INDEX "place_geo_index" ON "public"."place" USING "gist" ("location");



ALTER TABLE ONLY "public"."assignment"
    ADD CONSTRAINT "assignment_task_id_fkey" FOREIGN KEY ("task_id") REFERENCES "public"."task"("id");



ALTER TABLE ONLY "public"."assignment"
    ADD CONSTRAINT "assignment_volunteer_profile_id_fkey" FOREIGN KEY ("volunteer_profile_id") REFERENCES "public"."volunteerprofiles"("id");



ALTER TABLE ONLY "public"."issue_event"
    ADD CONSTRAINT "issue_event_place_id_fkey" FOREIGN KEY ("place_id") REFERENCES "public"."place"("id");



ALTER TABLE ONLY "public"."notification_user"
    ADD CONSTRAINT "notification_user_notification_id_fkey" FOREIGN KEY ("notification_id") REFERENCES "public"."notification"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notification_user"
    ADD CONSTRAINT "notification_user_to_user_id_fkey" FOREIGN KEY ("to_user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."report"
    ADD CONSTRAINT "report_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "public"."address"("address_id");



ALTER TABLE ONLY "public"."user_roles"
    ADD CONSTRAINT "roles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."task"
    ADD CONSTRAINT "task_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "public"."address"("address_id");



ALTER TABLE ONLY "public"."user_notification"
    ADD CONSTRAINT "user_notification_notification_id_fkey" FOREIGN KEY ("notification_id") REFERENCES "public"."notification"("id");



ALTER TABLE ONLY "public"."user_notification"
    ADD CONSTRAINT "user_notification_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_profiles"
    ADD CONSTRAINT "userprofile_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "public"."address"("address_id");



ALTER TABLE ONLY "public"."user_profiles"
    ADD CONSTRAINT "userprofile_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."volunteerprofiles"
    ADD CONSTRAINT "volunteerprofiles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");



CREATE POLICY "Allow auth admin to read user roles" ON "public"."user_roles" FOR SELECT TO "supabase_auth_admin" USING (true);





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "postgis" TO "service_role";
GRANT USAGE ON SCHEMA "postgis" TO "anon";
GRANT USAGE ON SCHEMA "postgis" TO "authenticated";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";
GRANT USAGE ON SCHEMA "public" TO "supabase_auth_admin";










































































































































































































































































































































































































































































































































GRANT ALL ON FUNCTION "public"."custom_access_token_hook"("event" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."custom_access_token_hook"("event" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."custom_access_token_hook"("event" "jsonb") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_places_with_lat_lon"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_places_with_lat_lon"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_places_with_lat_lon"() TO "service_role";






























GRANT ALL ON TABLE "public"."address" TO "anon";
GRANT ALL ON TABLE "public"."address" TO "authenticated";
GRANT ALL ON TABLE "public"."address" TO "service_role";



GRANT ALL ON TABLE "public"."assignment" TO "anon";
GRANT ALL ON TABLE "public"."assignment" TO "authenticated";
GRANT ALL ON TABLE "public"."assignment" TO "service_role";



GRANT ALL ON TABLE "public"."donation" TO "anon";
GRANT ALL ON TABLE "public"."donation" TO "authenticated";
GRANT ALL ON TABLE "public"."donation" TO "service_role";



GRANT ALL ON TABLE "public"."geometries" TO "anon";
GRANT ALL ON TABLE "public"."geometries" TO "authenticated";
GRANT ALL ON TABLE "public"."geometries" TO "service_role";



GRANT ALL ON TABLE "public"."issue_event" TO "anon";
GRANT ALL ON TABLE "public"."issue_event" TO "authenticated";
GRANT ALL ON TABLE "public"."issue_event" TO "service_role";



GRANT ALL ON TABLE "public"."notification" TO "anon";
GRANT ALL ON TABLE "public"."notification" TO "authenticated";
GRANT ALL ON TABLE "public"."notification" TO "service_role";



GRANT ALL ON TABLE "public"."notification_user" TO "anon";
GRANT ALL ON TABLE "public"."notification_user" TO "authenticated";
GRANT ALL ON TABLE "public"."notification_user" TO "service_role";



GRANT ALL ON TABLE "public"."place" TO "anon";
GRANT ALL ON TABLE "public"."place" TO "authenticated";
GRANT ALL ON TABLE "public"."place" TO "service_role";



GRANT ALL ON TABLE "public"."report" TO "anon";
GRANT ALL ON TABLE "public"."report" TO "authenticated";
GRANT ALL ON TABLE "public"."report" TO "service_role";



GRANT ALL ON TABLE "public"."task" TO "anon";
GRANT ALL ON TABLE "public"."task" TO "authenticated";
GRANT ALL ON TABLE "public"."task" TO "service_role";



GRANT ALL ON TABLE "public"."user_notification" TO "anon";
GRANT ALL ON TABLE "public"."user_notification" TO "authenticated";
GRANT ALL ON TABLE "public"."user_notification" TO "service_role";



GRANT ALL ON TABLE "public"."user_profiles" TO "anon";
GRANT ALL ON TABLE "public"."user_profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."user_profiles" TO "service_role";



GRANT ALL ON TABLE "public"."user_roles" TO "service_role";
GRANT ALL ON TABLE "public"."user_roles" TO PUBLIC;
GRANT ALL ON TABLE "public"."user_roles" TO "supabase_auth_admin";



GRANT ALL ON TABLE "public"."volunteerprofiles" TO "anon";
GRANT ALL ON TABLE "public"."volunteerprofiles" TO "authenticated";
GRANT ALL ON TABLE "public"."volunteerprofiles" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
