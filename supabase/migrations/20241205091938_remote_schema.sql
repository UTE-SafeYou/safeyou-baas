alter table "public"."address" alter column "created_at" set default now();

alter table "public"."volunteerprofiles" alter column "skills" set not null;

alter table "public"."volunteerprofiles" alter column "user_id" set not null;

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


