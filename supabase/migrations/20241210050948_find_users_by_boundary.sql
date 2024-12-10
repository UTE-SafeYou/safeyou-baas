CREATE OR REPLACE FUNCTION find_users_by_boundary(boundary_points text)
RETURNS TABLE (
    user_id uuid,
    fullname text,
    email varchar,
    phone varchar,
    city text,
    district text
) LANGUAGE plpgsql AS $$
DECLARE
    boundary_polygon postgis.geography;
BEGIN
    -- First point is automatically repeated by PostGIS when using ST_GeographyFromText
    boundary_polygon := postgis.ST_GeographyFromText(
        'SRID=4326;POLYGON((' || boundary_points || '))'
    );

    RETURN QUERY
    SELECT DISTINCT
        up.user_id,
        up.fullname,
        up.email,
        up.phone,
        a.city,
        a.district
    FROM user_profiles up
    JOIN address a ON up.address_id = a.address_id
    WHERE 
        postgis.ST_Contains(
            boundary_polygon::postgis.geometry, 
            COALESCE(up.last_location, a.location)::postgis.geometry
        );
END;
$$;
