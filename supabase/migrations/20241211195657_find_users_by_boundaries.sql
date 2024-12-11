CREATE OR REPLACE FUNCTION find_users_by_boundaries(boundary_points_array text[])
RETURNS TABLE (
    user_id uuid,
    fullname text,
    email varchar,
    phone varchar,
    city text,
    district text
) LANGUAGE plpgsql AS $$
DECLARE
    boundary_text text;
    boundary_polygon postgis.geography;
BEGIN
    RETURN QUERY
    WITH boundary_geoms AS (
        SELECT postgis.ST_GeographyFromText(
            'SRID=4326;POLYGON((' || unnest(boundary_points_array) || '))'
        ) as geom
    )
    SELECT DISTINCT
        up.user_id,
        up.fullname,
        up.email,
        up.phone,
        a.city,
        a.district
    FROM user_profiles up
    JOIN address a ON up.address_id = a.address_id
    CROSS JOIN boundary_geoms bg
    WHERE postgis.ST_Contains(
        bg.geom::postgis.geometry,
        COALESCE(up.last_location, a.location)::postgis.geometry
    );
END;
$$;