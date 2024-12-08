ALTER TABLE public.issue_event DROP CONSTRAINT issue_event_place_id_fkey;
ALTER TABLE public.issue_event DROP COLUMN place_id;

CREATE TABLE IF NOT EXISTS public.issue_event_place (
    issue_event_id uuid NOT NULL,
    place_id uuid NOT NULL,
    PRIMARY KEY (issue_event_id, place_id),
    FOREIGN KEY (issue_event_id) REFERENCES issue_event (id) ON DELETE CASCADE,
    FOREIGN KEY (place_id) REFERENCES place (id) ON DELETE CASCADE
);