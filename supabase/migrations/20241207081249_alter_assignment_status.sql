ALTER TABLE public."assignment" ALTER COLUMN status TYPE public.taskstatus USING status::text::public.taskstatus;

DROP TYPE public."statustype";