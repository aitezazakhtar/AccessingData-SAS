***********************************************************;
*    1) Complete the PROC IMPORT step to read             *;
*       EU_SPORT_TRADE.XLSX. Create a SAS table named     *;
*       EU_SPORT_TRADE and replace the table              *;
*       if it exists.                                     *;
*    2) Modify the PROC CONTENTS code to display the      *;
*       descriptor portion of the EU_SPORT_TRADE table.   *;
*       Submit the program, and then view the output data *;
*       and the results.                                  *;
***********************************************************;

*1);
proc import datafile="/home/u48709362/EPG194/data/eu_sport_trade.xlsx" 
            dbms=xlsx
            out=eu_sport_trade
            replace;
run;

*2);
proc contents data=eu_sport_trade;
run;


**********************************************************************;
*    1) Write a PROC IMPORT step to read the np_traffic.csv file 
       and create the traffic SAS table. Add a PROC CONTENTS step 
       to view the descriptor portion of the newly created table.
    2) Examine the data interactively. Notice that the values for 
       ParkName and TrafficCounter seem to be truncated. Modify the 
       program to resolve this issue. Submit the program and verify 
       that ParkName and TrafficCounter are no longer truncated.
***********************************************************************;

*1);
proc import datafile="FILEPATH/np_traffic.csv"
            dbms=csv
            out=traffic
            replace;
run;

proc contents data=traffic;
run;

*2);
proc import datafile="FILEPATH/np_traffic.csv"
            dbms=csv
            out=traffic
            replace;
    guessingrows=max;
run;

proc contents data=traffic;
run;

