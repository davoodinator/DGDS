UPDATE vitems_mastertable SET vood_data = [replace](vood_data, "/", "\");
UPDATE vitems_mastertable SET vood_data = [replace](vood_data, "\records", "records");
UPDATE vitems_mastertable SET    vood_r = [replace](vood_r, "/", "\");
UPDATE vitems_mastertable SET    vood_r = [replace](vood_r, "\records", "records");

UPDATE vitems SET vood_data = [replace](vood_data, "/", "\");
UPDATE vitems SET vood_data = [replace](vood_data, "\records", "records");
UPDATE vitems SET    vood_r = [replace](vood_r, "/", "\");
UPDATE vitems SET    vood_r = [replace](vood_r, "\records", "records");

UPDATE vitems_lt SET vood_data = [replace](vood_data, "/", "\");
UPDATE vitems_lt SET vood_data = [replace](vood_data, "\records", "records");
UPDATE vitems_lt SET    vood_r = [replace](vood_r, "/", "\");
UPDATE vitems_lt SET    vood_r = [replace](vood_r, "\records", "records");

UPDATE vitems_loottable SET vood_data = [replace](vood_data, "/", "\");
UPDATE vitems_loottable SET vood_data = [replace](vood_data, "\records", "records");
UPDATE vitems_loottable SET    vood_r = [replace](vood_r, "/", "\");
UPDATE vitems_loottable SET    vood_r = [replace](vood_r, "\records", "records");

UPDATE vmobs SET vood_data = [replace](vood_data, "/", "\");
UPDATE vmobs SET vood_data = [replace](vood_data, "\records", "records");
UPDATE vmobs SET    vood_r = [replace](vood_r, "/", "\");
UPDATE vmobs SET    vood_r = [replace](vood_r, "\records", "records");

