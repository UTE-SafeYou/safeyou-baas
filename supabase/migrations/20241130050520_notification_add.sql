create type "public"."notificationtype" as enum ('Emergency', 'Normal');

create type "public"."sendtype" as enum ('All', 'User', 'Admin');

create type "public"."statustype" as enum ('PENDING', 'IN_PROGRESS', 'COMPLETED', 'CANCELLED');

create type "public"."taskstatus" as enum ('TODO', 'DOING', 'DONE', 'FAILED');

create type "public"."urgency" as enum ('SLOW', 'MEDIUM', 'HIGH');

create table "public"."assignment" (
    "id" uuid not null default gen_random_uuid(),
    "status" statustype not null,
    "completiondate" timestamp without time zone,
    "assigneddate" timestamp without time zone not null,
    "feedback" text,
    "task_id" uuid,
    "volunteer_profile_id" uuid
);


create table "public"."notification" (
    "id" uuid not null default gen_random_uuid(),
    "title" text not null,
    "content" text not null,
    "type" notificationtype not null,
    "user_id" uuid,
    "sendtype" sendtype not null
);


create table "public"."skill" (
    "id" uuid not null default gen_random_uuid(),
    "skillname" text not null
);


create table "public"."task" (
    "id" uuid not null default gen_random_uuid(),
    "title" text not null,
    "description" text not null,
    "required_skills" text,
    "urgency" urgency not null,
    "startdate" timestamp without time zone not null,
    "enddate" timestamp without time zone not null,
    "taskstatus" taskstatus not null,
    "address_id" uuid
);


create table "public"."userskills" (
    "user_id" uuid not null,
    "skill_id" uuid not null
);


create table "public"."volunteerprofiles" (
    "id" uuid not null default gen_random_uuid(),
    "user_id" uuid,
    "assignedtask" uuid[],
    "skills" uuid[]
);


CREATE UNIQUE INDEX assignment_pkey ON public.assignment USING btree (id);

CREATE UNIQUE INDEX notification_pkey ON public.notification USING btree (id);

CREATE UNIQUE INDEX skill_pkey ON public.skill USING btree (id);

CREATE UNIQUE INDEX task_pkey ON public.task USING btree (id);

CREATE UNIQUE INDEX userskills_pkey ON public.userskills USING btree (user_id, skill_id);

CREATE UNIQUE INDEX volunteerprofiles_pkey ON public.volunteerprofiles USING btree (id);

alter table "public"."assignment" add constraint "assignment_pkey" PRIMARY KEY using index "assignment_pkey";

alter table "public"."notification" add constraint "notification_pkey" PRIMARY KEY using index "notification_pkey";

alter table "public"."skill" add constraint "skill_pkey" PRIMARY KEY using index "skill_pkey";

alter table "public"."task" add constraint "task_pkey" PRIMARY KEY using index "task_pkey";

alter table "public"."userskills" add constraint "userskills_pkey" PRIMARY KEY using index "userskills_pkey";

alter table "public"."volunteerprofiles" add constraint "volunteerprofiles_pkey" PRIMARY KEY using index "volunteerprofiles_pkey";

alter table "public"."assignment" add constraint "assignment_task_id_fkey" FOREIGN KEY (task_id) REFERENCES task(id) not valid;

alter table "public"."assignment" validate constraint "assignment_task_id_fkey";

alter table "public"."assignment" add constraint "assignment_volunteer_profile_id_fkey" FOREIGN KEY (volunteer_profile_id) REFERENCES volunteerprofiles(id) not valid;

alter table "public"."assignment" validate constraint "assignment_volunteer_profile_id_fkey";

alter table "public"."notification" add constraint "notification_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) not valid;

alter table "public"."notification" validate constraint "notification_user_id_fkey";

alter table "public"."task" add constraint "task_address_id_fkey" FOREIGN KEY (address_id) REFERENCES address(address_id) not valid;

alter table "public"."task" validate constraint "task_address_id_fkey";

alter table "public"."userskills" add constraint "userskills_skill_id_fkey" FOREIGN KEY (skill_id) REFERENCES skill(id) not valid;

alter table "public"."userskills" validate constraint "userskills_skill_id_fkey";

alter table "public"."userskills" add constraint "userskills_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) not valid;

alter table "public"."userskills" validate constraint "userskills_user_id_fkey";

alter table "public"."volunteerprofiles" add constraint "volunteerprofiles_user_id_fkey" FOREIGN KEY (user_id) REFERENCES auth.users(id) not valid;

alter table "public"."volunteerprofiles" validate constraint "volunteerprofiles_user_id_fkey";

grant delete on table "public"."assignment" to "anon";

grant insert on table "public"."assignment" to "anon";

grant references on table "public"."assignment" to "anon";

grant select on table "public"."assignment" to "anon";

grant trigger on table "public"."assignment" to "anon";

grant truncate on table "public"."assignment" to "anon";

grant update on table "public"."assignment" to "anon";

grant delete on table "public"."assignment" to "authenticated";

grant insert on table "public"."assignment" to "authenticated";

grant references on table "public"."assignment" to "authenticated";

grant select on table "public"."assignment" to "authenticated";

grant trigger on table "public"."assignment" to "authenticated";

grant truncate on table "public"."assignment" to "authenticated";

grant update on table "public"."assignment" to "authenticated";

grant delete on table "public"."assignment" to "service_role";

grant insert on table "public"."assignment" to "service_role";

grant references on table "public"."assignment" to "service_role";

grant select on table "public"."assignment" to "service_role";

grant trigger on table "public"."assignment" to "service_role";

grant truncate on table "public"."assignment" to "service_role";

grant update on table "public"."assignment" to "service_role";

grant delete on table "public"."notification" to "anon";

grant insert on table "public"."notification" to "anon";

grant references on table "public"."notification" to "anon";

grant select on table "public"."notification" to "anon";

grant trigger on table "public"."notification" to "anon";

grant truncate on table "public"."notification" to "anon";

grant update on table "public"."notification" to "anon";

grant delete on table "public"."notification" to "authenticated";

grant insert on table "public"."notification" to "authenticated";

grant references on table "public"."notification" to "authenticated";

grant select on table "public"."notification" to "authenticated";

grant trigger on table "public"."notification" to "authenticated";

grant truncate on table "public"."notification" to "authenticated";

grant update on table "public"."notification" to "authenticated";

grant delete on table "public"."notification" to "service_role";

grant insert on table "public"."notification" to "service_role";

grant references on table "public"."notification" to "service_role";

grant select on table "public"."notification" to "service_role";

grant trigger on table "public"."notification" to "service_role";

grant truncate on table "public"."notification" to "service_role";

grant update on table "public"."notification" to "service_role";

grant delete on table "public"."skill" to "anon";

grant insert on table "public"."skill" to "anon";

grant references on table "public"."skill" to "anon";

grant select on table "public"."skill" to "anon";

grant trigger on table "public"."skill" to "anon";

grant truncate on table "public"."skill" to "anon";

grant update on table "public"."skill" to "anon";

grant delete on table "public"."skill" to "authenticated";

grant insert on table "public"."skill" to "authenticated";

grant references on table "public"."skill" to "authenticated";

grant select on table "public"."skill" to "authenticated";

grant trigger on table "public"."skill" to "authenticated";

grant truncate on table "public"."skill" to "authenticated";

grant update on table "public"."skill" to "authenticated";

grant delete on table "public"."skill" to "service_role";

grant insert on table "public"."skill" to "service_role";

grant references on table "public"."skill" to "service_role";

grant select on table "public"."skill" to "service_role";

grant trigger on table "public"."skill" to "service_role";

grant truncate on table "public"."skill" to "service_role";

grant update on table "public"."skill" to "service_role";

grant delete on table "public"."task" to "anon";

grant insert on table "public"."task" to "anon";

grant references on table "public"."task" to "anon";

grant select on table "public"."task" to "anon";

grant trigger on table "public"."task" to "anon";

grant truncate on table "public"."task" to "anon";

grant update on table "public"."task" to "anon";

grant delete on table "public"."task" to "authenticated";

grant insert on table "public"."task" to "authenticated";

grant references on table "public"."task" to "authenticated";

grant select on table "public"."task" to "authenticated";

grant trigger on table "public"."task" to "authenticated";

grant truncate on table "public"."task" to "authenticated";

grant update on table "public"."task" to "authenticated";

grant delete on table "public"."task" to "service_role";

grant insert on table "public"."task" to "service_role";

grant references on table "public"."task" to "service_role";

grant select on table "public"."task" to "service_role";

grant trigger on table "public"."task" to "service_role";

grant truncate on table "public"."task" to "service_role";

grant update on table "public"."task" to "service_role";

grant delete on table "public"."userskills" to "anon";

grant insert on table "public"."userskills" to "anon";

grant references on table "public"."userskills" to "anon";

grant select on table "public"."userskills" to "anon";

grant trigger on table "public"."userskills" to "anon";

grant truncate on table "public"."userskills" to "anon";

grant update on table "public"."userskills" to "anon";

grant delete on table "public"."userskills" to "authenticated";

grant insert on table "public"."userskills" to "authenticated";

grant references on table "public"."userskills" to "authenticated";

grant select on table "public"."userskills" to "authenticated";

grant trigger on table "public"."userskills" to "authenticated";

grant truncate on table "public"."userskills" to "authenticated";

grant update on table "public"."userskills" to "authenticated";

grant delete on table "public"."userskills" to "service_role";

grant insert on table "public"."userskills" to "service_role";

grant references on table "public"."userskills" to "service_role";

grant select on table "public"."userskills" to "service_role";

grant trigger on table "public"."userskills" to "service_role";

grant truncate on table "public"."userskills" to "service_role";

grant update on table "public"."userskills" to "service_role";

grant delete on table "public"."volunteerprofiles" to "anon";

grant insert on table "public"."volunteerprofiles" to "anon";

grant references on table "public"."volunteerprofiles" to "anon";

grant select on table "public"."volunteerprofiles" to "anon";

grant trigger on table "public"."volunteerprofiles" to "anon";

grant truncate on table "public"."volunteerprofiles" to "anon";

grant update on table "public"."volunteerprofiles" to "anon";

grant delete on table "public"."volunteerprofiles" to "authenticated";

grant insert on table "public"."volunteerprofiles" to "authenticated";

grant references on table "public"."volunteerprofiles" to "authenticated";

grant select on table "public"."volunteerprofiles" to "authenticated";

grant trigger on table "public"."volunteerprofiles" to "authenticated";

grant truncate on table "public"."volunteerprofiles" to "authenticated";

grant update on table "public"."volunteerprofiles" to "authenticated";

grant delete on table "public"."volunteerprofiles" to "service_role";

grant insert on table "public"."volunteerprofiles" to "service_role";

grant references on table "public"."volunteerprofiles" to "service_role";

grant select on table "public"."volunteerprofiles" to "service_role";

grant trigger on table "public"."volunteerprofiles" to "service_role";

grant truncate on table "public"."volunteerprofiles" to "service_role";

grant update on table "public"."volunteerprofiles" to "service_role";


GRANT USAGE ON SCHEMA postgis TO service_role;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA postgis TO service_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA postgis TO service_role;


GRANT USAGE ON SCHEMA postgis TO anon;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA postgis TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA postgis TO anon;


GRANT USAGE ON SCHEMA postgis TO authenticated;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA postgis TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA postgis TO authenticated;