ALTER TABLE "public"."donation"
ADD COLUMN "address_id" uuid;

ALTER TABLE "public"."donation" ADD CONSTRAINT "donation_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "public"."address" ("address_id");

ALTER TABLE "public"."donation"
DROP COLUMN "address";