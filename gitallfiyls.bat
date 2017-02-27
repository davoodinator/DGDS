rem cmd
del vitesm.txt
del vitems_lt.txt
del vitesm.loottable.txt
del vitems_mastertable.txt
dir /s /b .\items\*.dbr | findstr /v "lt_" | findstr /v "\mastertables" > vitems.txt
dir /s /b .\items\tdyn*.dbr | findstr /v "lt_" | findstr /v "\mastertables" > vitems_lt.txt
dir /s /b .\items\*lt_*.dbr | findstr /v "\mastertables" > vitems_loottable.txt
dir /s /b .\items\loottables\mastertables\*.dbr > vitems_mastertable.txt
