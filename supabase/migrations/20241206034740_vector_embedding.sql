create type "public"."visibility_enum" as enum ('public', 'private', 'protected');

create table "public"."documents" (
    "id" uuid not null default gen_random_uuid(),
    "visibility" visibility_enum not null,
    "category" text,
    "title" text,
    "content" text,
    "embedding" vector(768),
    "created_at" timestamp without time zone default CURRENT_TIMESTAMP,
    "updated_at" timestamp without time zone default CURRENT_TIMESTAMP
);


CREATE INDEX documents_embedding_index ON public.documents USING ivfflat (embedding vector_cosine_ops);

CREATE UNIQUE INDEX documents_pkey ON public.documents USING btree (id);

alter table "public"."documents" add constraint "documents_pkey" PRIMARY KEY using index "documents_pkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.search_doc_by_vector(search_vector vector, limit_count integer)
 RETURNS TABLE(id uuid, title text, content text, category text, visibility visibility_enum, created_at timestamp without time zone, updated_at timestamp without time zone, similarity double precision)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT
        d.id,
        d.title,
        d.content,
        d.category,
        d.visibility,
        d.created_at,
        d.updated_at,
        1 - (d.embedding <=> search_vector) AS similarity
    FROM
        public.documents d
    ORDER BY
        similarity DESC
    LIMIT
        limit_count;
END;
$function$
;

grant delete on table "public"."documents" to "anon";

grant insert on table "public"."documents" to "anon";

grant references on table "public"."documents" to "anon";

grant select on table "public"."documents" to "anon";

grant trigger on table "public"."documents" to "anon";

grant truncate on table "public"."documents" to "anon";

grant update on table "public"."documents" to "anon";

grant delete on table "public"."documents" to "authenticated";

grant insert on table "public"."documents" to "authenticated";

grant references on table "public"."documents" to "authenticated";

grant select on table "public"."documents" to "authenticated";

grant trigger on table "public"."documents" to "authenticated";

grant truncate on table "public"."documents" to "authenticated";

grant update on table "public"."documents" to "authenticated";

grant delete on table "public"."documents" to "service_role";

grant insert on table "public"."documents" to "service_role";

grant references on table "public"."documents" to "service_role";

grant select on table "public"."documents" to "service_role";

grant trigger on table "public"."documents" to "service_role";

grant truncate on table "public"."documents" to "service_role";

grant update on table "public"."documents" to "service_role";