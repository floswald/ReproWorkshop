
*** time csv read ***
timer on 1

*** read data ***
insheet using "$root/data/raw/data.csv", clear

timer off 1

*** drop a few columns
drop id1_int id2_int w

if "$subset" == "1" {
    * take a smaller subset
    generate random = runiform()
    sort random
    generate insample = _n <= 100000
    keep if insample==1
} 

*** save on disk
save "$root/data/processed/cleaned.dta", replace

