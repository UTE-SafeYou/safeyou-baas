create policy "Select images"
on "storage"."objects"
as permissive
for select
to public
using ((bucket_id = 'places'::text));


create policy "Upload images"
on "storage"."objects"
as permissive
for insert
to public
with check ((bucket_id = 'places'::text));



