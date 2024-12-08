CREATE OR REPLACE FUNCTION get_users_within_radius(
    p_latitude float8,
    p_longitude float8,
    p_radius float8
) RETURNS TABLE (
    user_id uuid,
    fullname text,
    email varchar,
    phone varchar,
    distance float8,
    is_last_location boolean
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
    WITH user_locations AS (
        SELECT 
            up.user_id,
            up.fullname,
            up.email,
            up.phone,
            CASE
                WHEN up.last_location IS NOT NULL AND a.location IS NOT NULL THEN
                    CASE
                        WHEN postgis.ST_Distance(
                            up.last_location,
                            postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography
                        ) < postgis.ST_Distance(
                            a.location,
                            postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography
                        ) THEN up.last_location
                        ELSE a.location
                    END
                ELSE COALESCE(up.last_location, a.location)
            END as final_location,
            CASE
                WHEN up.last_location IS NOT NULL AND a.location IS NOT NULL THEN
                    postgis.ST_Distance(
                        up.last_location,
                        postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography
                    ) < postgis.ST_Distance(
                        a.location,
                        postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography
                    )
                ELSE up.last_location IS NOT NULL
            END as is_last_location
        FROM user_profiles up
        LEFT JOIN address a ON up.address_id = a.address_id
        WHERE up.last_location IS NOT NULL OR a.location IS NOT NULL
    )
    SELECT 
        ul.user_id,
        ul.fullname,
        ul.email,
        ul.phone,
        postgis.ST_Distance(
            ul.final_location,
            postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography
        ) as distance,
        ul.is_last_location
    FROM user_locations ul
    WHERE postgis.ST_DWithin(
        ul.final_location,
        postgis.ST_SetSRID(postgis.ST_MakePoint(p_longitude, p_latitude), 4326)::postgis.geography,
        p_radius
    )
    ORDER BY distance;
END;
$$;

CREATE OR REPLACE FUNCTION get_users_by_province(p_province text)
RETURNS TABLE (
    user_id uuid,
    fullname text,
    email varchar,
    phone varchar,
    city text,
    district text
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
    SELECT 
        up.user_id,
        up.fullname,
        up.email,
        up.phone,
        a.city,
        a.district
    FROM user_profiles up
    JOIN address a ON up.address_id = a.address_id
    WHERE a.city = p_province;
END;
$$;

CREATE OR REPLACE FUNCTION find_users_by_address(search_term text)
RETURNS TABLE (
    user_id uuid,
    fullname text,
    email varchar,
    phone varchar,
    city text,
    district text
) LANGUAGE plpgsql AS $$
BEGIN
    RETURN QUERY
    SELECT 
        up.user_id,
        up.fullname,
        up.email,
        up.phone,
        a.city,
        a.district
    FROM user_profiles up
    JOIN address a ON up.address_id = a.address_id
    WHERE 
        LOWER(a.city) LIKE LOWER('%' || search_term || '%') OR
        LOWER(a.district) LIKE LOWER('%' || search_term || '%') OR
        LOWER(a.ward) LIKE LOWER('%' || search_term || '%') OR
        LOWER(a.street) LIKE LOWER('%' || search_term || '%');
END;
$$;
