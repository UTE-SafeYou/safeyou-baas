CREATE OR REPLACE FUNCTION insert_places(places_input jsonb)
RETURNS SETOF uuid AS $$
DECLARE
  place jsonb;
  inserted_id uuid;
BEGIN
  -- Loop through each place in the input JSONB array
  FOR place IN
    SELECT * FROM jsonb_array_elements(places_input)
  LOOP
    -- Insert each place into the 'place' table
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
      place->'additional_info',  -- Assuming additional_info is a JSON object
     postgis.ST_SetSRID(postgis.ST_MakePoint(
        (place->>'longitude')::double precision, 
        (place->>'lattitude')::double precision
      ), 4326),  -- Create the geography point with SRID 4326
      (place->>'radius')::double precision,
      (place->>'lattitude')::real,
      (place->>'longitude')::real
    )
    RETURNING id INTO inserted_id;

    -- Return the inserted id one by one
    RETURN NEXT inserted_id;
  END LOOP;

  -- Finish the function
  RETURN;
END;
$$ LANGUAGE plpgsql;