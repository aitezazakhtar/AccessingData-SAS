***********************************************************;
*  Activity 2.04                                          *;
*    1) Write a PROC CONTENTS step to generate a report   *;
*       of the STORM_SUMMARY.SAS7BDAT table properties.   *;
*       Highlight the step and run only the selected      *;
*       code.                                             *;
*    2) How many observations are in the table?           *;
*    3) How is the table sorted?                          *;
***********************************************************;

proc contents data="/home/u48709362/EPG194/data/storm_summary.sas7bdat";
   run;
*3118 ;
*by Season, Name;