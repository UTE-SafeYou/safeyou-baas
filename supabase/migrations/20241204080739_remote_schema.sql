alter table "public"."user_notification" drop constraint "user_notification_pkey";

drop index if exists "public"."user_notification_pkey";

alter table "public"."notification" add column "created_at" timestamp with time zone not null default now();

alter table "public"."notification_user" disable row level security;

alter table "public"."place" add column "lattitude" real;

alter table "public"."place" add column "longitude" real;

alter table "public"."user_notification" drop column "created_at";

alter table "public"."user_notification" drop column "id";

alter table "public"."user_notification" alter column "notification_id" set not null;

alter table "public"."user_notification" alter column "user_id" set not null;

CREATE UNIQUE INDEX user_notification_pkey ON public.user_notification USING btree (user_id, notification_id);

alter table "public"."user_notification" add constraint "user_notification_pkey" PRIMARY KEY using index "user_notification_pkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_places_with_lat_lon()
 RETURNS TABLE(place_type text, location jsonb)
 LANGUAGE plpgsql
AS $function$
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
$function$
;


