create table "public"."donation" (
    "id" uuid not null default gen_random_uuid(),
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


alter table "public"."address" add column "latitude" real;

alter table "public"."address" add column "longitude" real;

alter table "public"."user_profiles" add column "phone" character varying not null default ''::character varying;

CREATE UNIQUE INDEX donation_pkey ON public.donation USING btree (id);

CREATE UNIQUE INDEX user_profiles_phone_key ON public.user_profiles USING btree (phone);

alter table "public"."donation" add constraint "donation_pkey" PRIMARY KEY using index "donation_pkey";

alter table "public"."user_profiles" add constraint "user_profiles_phone_key" UNIQUE using index "user_profiles_phone_key";

grant delete on table "public"."donation" to "anon";

grant insert on table "public"."donation" to "anon";

grant references on table "public"."donation" to "anon";

grant select on table "public"."donation" to "anon";

grant trigger on table "public"."donation" to "anon";

grant truncate on table "public"."donation" to "anon";

grant update on table "public"."donation" to "anon";

grant delete on table "public"."donation" to "authenticated";

grant insert on table "public"."donation" to "authenticated";

grant references on table "public"."donation" to "authenticated";

grant select on table "public"."donation" to "authenticated";

grant trigger on table "public"."donation" to "authenticated";

grant truncate on table "public"."donation" to "authenticated";

grant update on table "public"."donation" to "authenticated";

grant delete on table "public"."donation" to "service_role";

grant insert on table "public"."donation" to "service_role";

grant references on table "public"."donation" to "service_role";

grant select on table "public"."donation" to "service_role";

grant trigger on table "public"."donation" to "service_role";

grant truncate on table "public"."donation" to "service_role";

grant update on table "public"."donation" to "service_role";


