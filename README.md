# DGDS
Davoodinator Grim Database Scraper

Instructions !

now for the files and what they do, and the order you should use them.

1. [b]gitallfiyls.bat[/b]
This one will generate lists of folders+filenames for later scripts

2. [b]voodlist.xlsx[/b]
used to generate the contents starting on line 7 of databuilder.ps1

3. [b]databuilder.ps1[/b]
run this in the records folder (right click run with powershell) or do it from elevated commandn prompt with [b]powershill.bat[/b] (right click run as administrator)
you may also want to change the path from  F:\SHTEEM\steamapps\common\Grim Dawn\database\records to something more fitting for your grim dawns records folder.  (in [b]powershill.bat[/b])
you may also run into execution policy complaints from powershell.   
type this in to fix it  [b]Set-ExecutionPolicy Unrestricted[/b]

4. [b]*.csv[/b]
now for the fun part.... for small files you can use sqlitestudio... but for larger files you'll need to use sqlite3.exe

[b]sqlitestudio.exe[/b] - GUI SQLITE manager - https://sqlitestudio.pl/index.rvt
[b]sqlite3.exe[/b] - CLI SQLITE manager - http://www.sqlite.org/cli.html

Anyways. it should be obvious what to do in sqlitestudio.
as for sqlite3.exe which I recommend you use... put the .db file in the same folder as sqlite3.exe, and run it. 
use the example database I prepared in the [b]voodGD.7z[/b] file

to clear voodGD.db  use this sql
[b]
delete from vitems;
delete from vitems_lt;
delete from vitems_loottable;
delete from vitems_mastertable;
delete from vmobs;
[/b]

to insert a csv file into the db using [b]sqlite3.exe[/b], start by opening [b]sqlite3.exe[/b]
Then type the following commands to import the voodDBvmobs csv file into the table vmobs
[b]
sqlite3 voodGD.db
.mode csv
.import voodDBvmobs.csv vmobs
[/b]

5. [b]database_cleanup.sql[/b]
run this to clean up and fix the formatting of the fields in the db.. you may have to run it one line at a time

6. [b] itemsearch Type A v2.sql[/b]
an example of how you would use the database i provided to do a search for the blueprint for tinkers ingenuity legendary girdle :D  it returns all of the monsters that drop it.