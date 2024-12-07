CREATE OR REPLACE FUNCTION create_assignment(
    p_user_id UUID,
    p_task_id UUID
)
RETURNS VOID AS $$
DECLARE
    volunteer_profile_id UUID;
    new_assignment_id UUID;
BEGIN
    -- Step 1: Retrieve the volunteer profile ID for the given user_id
    SELECT id INTO volunteer_profile_id
    FROM public.volunteerprofiles
    WHERE public.volunteerprofiles.user_id = p_user_id;

    -- Check if a volunteer profile was found
    IF volunteer_profile_id IS NULL THEN
        RAISE EXCEPTION 'Volunteer profile not found for user_id %', p_user_id;
    END IF;

    -- Step 2: Insert the new assignment into the assignment table
    INSERT INTO public.assignment (status, assigneddate, task_id, volunteer_profile_id)
    VALUES ('TODO', NOW(), p_task_id, volunteer_profile_id)
    RETURNING id INTO new_assignment_id;

    -- Step 3: Update the assignedtask array in the volunteer profile
    UPDATE public.volunteerprofiles
    SET assignedtask = array_append(assignedtask, new_assignment_id)
    WHERE id = volunteer_profile_id;

    -- Optionally log success
    RAISE NOTICE 'Assignment created and added to assignedtask successfully. Assignment ID: %', new_assignment_id;
END $$ LANGUAGE plpgsql;