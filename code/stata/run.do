*** Stata run script ***

global root "/Users/floswald/git/ReproWorkshop"
global stataroot "$root/code/stata"

cap assert !mi("$stataroot")
if _rc {
    noi di as error "Error: need to define the global in run.do"
    error 9
}

* Re-install stata libraries into this project? 1 = yes
global install = 1

* run analysis on smaller sample? 1 = yes
global subset = 0

* rebuild data? 1 = yes
global rebuild = 1

* Configure Stata's library environment and record system parameters
do "$stataroot/do/_config.do"

* Record start time and initialize log
local datetime1 = clock("$S_DATE $S_TIME", "DMYhms")
clear
timer clear

* Run analysis code
if "$rebuild" == "1" {
    do "$stataroot/do/1_read_data.do"
}
do "$stataroot/do/2_regression.do"

*** output timers
timer list

*** total runtime
local datetime2 = clock("$S_DATE $S_TIME", "DMYhms")
di "Runtime (minutes): " %-12.2fc (`datetime2' - `datetime1')/(1000*60)

display in red "++++ STATA DONE +++++"
