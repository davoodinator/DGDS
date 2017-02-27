/*search term  is 
vitems_vood_data ="SEARCH TERM HEREtaken from tagsen.txt"*/
--self note, another type of comment

select distinct
vmobs.vood_r vood_data,vtext.vood_data Clean_Name, vitems.vood_r items, vitems_lt.vood_r lt, vitems_loottable.vood_r loottable, vitems_mastertable.vood_r mastertable

from
vtext 
inner join vitems on vtext.vood_data_type = vitems.vood_data,
vitems_lt,vitems_loottable,vitems_mastertable, vmobs

where
vitems.vood_data = "tagBlueprint_AccessoryD006" AND
vitems_lt.vood_data like '%' + vitems.vood_r + '%' AND
vitems_loottable.vood_data like '%' + vitems_lt.vood_r + '%' AND
vitems_mastertable.vood_data like '%' + vitems_loottable.vood_r + '%' AND
vmobs.vood_data like '%' + vitems_mastertable.vood_r + '%'
limit 100
;