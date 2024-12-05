alter table "public"."documents" alter column "embedding" set data type vector(768) using "embedding"::vector(768);


