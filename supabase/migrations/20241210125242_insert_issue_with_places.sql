CREATE OR REPLACE FUNCTION insert_issue_event_with_places(
    title text,
    description text,
    label text,
    places_input jsonb
) RETURNS uuid AS $$
DECLARE
    issue_id uuid;
    place_id uuid;
    place jsonb;
BEGIN
    -- Insert the issue event first
    INSERT INTO public.issue_event (title, description, label)
    VALUES (title, description, label)
    RETURNING id INTO issue_id;

    -- Loop through the places array
    FOR place IN SELECT * FROM jsonb_array_elements(places_input)
    LOOP
        -- Check if place_id is provided
        IF (place->>'id') IS NOT NULL THEN
            place_id := (place->>'id')::uuid;
        ELSE
            -- Insert new place and get its id
            INSERT INTO public.place (
                place_type,
                additional_info,
                location,
                radius,
                lattitude,
                longitude
            )
            VALUES (
                place->>'place_type',
                place->'additional_info',
                postgis.ST_SetSRID(postgis.ST_MakePoint(
                    (place->>'longitude')::double precision,
                    (place->>'lattitude')::double precision
                ), 4326),
                (place->>'radius')::double precision,
                (place->>'lattitude')::real,
                (place->>'longitude')::real
            )
            RETURNING id INTO place_id;
        END IF;

        -- Create the relationship in issue_event_place
        INSERT INTO public.issue_event_place (issue_event_id, place_id)
        VALUES (issue_id, place_id);
    END LOOP;

    RETURN issue_id;
END;
$$ LANGUAGE plpgsql;
