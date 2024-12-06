create table if not exists "public"."vector_documents" (
    "id" uuid not null default gen_random_uuid(),
    "embedding" vector(768),
    "metadata" jsonb,
    "content" text
);


grant delete on table "public"."vector_documents" to "anon";

grant insert on table "public"."vector_documents" to "anon";

grant references on table "public"."vector_documents" to "anon";

grant select on table "public"."vector_documents" to "anon";

grant trigger on table "public"."vector_documents" to "anon";

grant truncate on table "public"."vector_documents" to "anon";

grant update on table "public"."vector_documents" to "anon";

grant delete on table "public"."vector_documents" to "authenticated";

grant insert on table "public"."vector_documents" to "authenticated";

grant references on table "public"."vector_documents" to "authenticated";

grant select on table "public"."vector_documents" to "authenticated";

grant trigger on table "public"."vector_documents" to "authenticated";

grant truncate on table "public"."vector_documents" to "authenticated";

grant update on table "public"."vector_documents" to "authenticated";

grant delete on table "public"."vector_documents" to "service_role";

grant insert on table "public"."vector_documents" to "service_role";

grant references on table "public"."vector_documents" to "service_role";

grant select on table "public"."vector_documents" to "service_role";

grant trigger on table "public"."vector_documents" to "service_role";

grant truncate on table "public"."vector_documents" to "service_role";

grant update on table "public"."vector_documents" to "service_role";

