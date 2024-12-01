create table "public"."notification_user" (
    "notification_id" uuid not null,
    "to_user_id" uuid not null
);


alter table "public"."notification_user" enable row level security;

CREATE UNIQUE INDEX notification_user_pkey ON public.notification_user USING btree (notification_id, to_user_id);

alter table "public"."notification_user" add constraint "notification_user_pkey" PRIMARY KEY using index "notification_user_pkey";

alter table "public"."notification_user" add constraint "notification_user_notification_id_fkey" FOREIGN KEY (notification_id) REFERENCES notification(id) ON DELETE CASCADE not valid;

alter table "public"."notification_user" validate constraint "notification_user_notification_id_fkey";

alter table "public"."notification_user" add constraint "notification_user_to_user_id_fkey" FOREIGN KEY (to_user_id) REFERENCES auth.users(id) ON DELETE CASCADE not valid;

alter table "public"."notification_user" validate constraint "notification_user_to_user_id_fkey";

grant delete on table "public"."notification_user" to "anon";

grant insert on table "public"."notification_user" to "anon";

grant references on table "public"."notification_user" to "anon";

grant select on table "public"."notification_user" to "anon";

grant trigger on table "public"."notification_user" to "anon";

grant truncate on table "public"."notification_user" to "anon";

grant update on table "public"."notification_user" to "anon";

grant delete on table "public"."notification_user" to "authenticated";

grant insert on table "public"."notification_user" to "authenticated";

grant references on table "public"."notification_user" to "authenticated";

grant select on table "public"."notification_user" to "authenticated";

grant trigger on table "public"."notification_user" to "authenticated";

grant truncate on table "public"."notification_user" to "authenticated";

grant update on table "public"."notification_user" to "authenticated";

grant delete on table "public"."notification_user" to "service_role";

grant insert on table "public"."notification_user" to "service_role";

grant references on table "public"."notification_user" to "service_role";

grant select on table "public"."notification_user" to "service_role";

grant trigger on table "public"."notification_user" to "service_role";

grant truncate on table "public"."notification_user" to "service_role";

grant update on table "public"."notification_user" to "service_role";


