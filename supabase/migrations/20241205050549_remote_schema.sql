alter table "public"."report" drop column "location";

alter table "public"."report" add column "address_id" uuid not null;

alter table "public"."task" drop column "enddate";

alter table "public"."task" drop column "startdate";

alter table "public"."task" drop column "taskstatus";

alter table "public"."task" add column "address_id" uuid not null;

alter table "public"."task" add column "end_date" timestamp without time zone ;

alter table "public"."task" add column "start_date" timestamp without time zone;

alter table "public"."task" add column "task_status" taskstatus not null;

alter table "public"."volunteerprofiles" alter column "skills" set data type character varying using "skills"::character varying;

alter table "public"."report" add constraint "report_address_id_fkey" FOREIGN KEY (address_id) REFERENCES address(address_id) not valid;

alter table "public"."report" validate constraint "report_address_id_fkey";

alter table "public"."task" add constraint "task_address_id_fkey" FOREIGN KEY (address_id) REFERENCES address(address_id) not valid;

alter table "public"."task" validate constraint "task_address_id_fkey";


