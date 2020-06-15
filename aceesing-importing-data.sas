***********************************************************;
*  Activity 2.07                                          *;
*    1) Write an OPTIONS statement to ensure that the     *;
*       column names follow SAS naming conventions.       *;
*    2) Complete the LIBNAME statement to create a        *;
*       library named NP that reads NP_INFO.XLSX in the   *;
*       data folder.                                      *;
*    3) 10.	Write a PROC CONTENTS step to read the Parks  *;
*       table in the NP library.                          *;
*    4) Create a library named PG1.                       *;
*    5) Import storm_damage.tab file.                     *;
***********************************************************;

*  1);
options validvarname=v7;

*  2);
libname np xlsx "/home/u48709362/EPG194/data/np_info.xlsx";

*  3);
proc contents data=np.parks;
run;

*  4);
libname pg1 base "/home/u48709362/EPG194/data";

*  5);
proc import datafile="/home/u48709362/EPG194/data/storm_damage.tab"
            dbms=tab
            out=storm_damage replace;
run;
