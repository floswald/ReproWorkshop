        *** read data ***
        use "$root/data/processed/cleaned.dta", clear

        *** time the estimation ***
        timer on 2

        eststo m0: reg y x1 x2 
        quietly estadd local fe1 "No", replace
        quietly estadd local fe2 "No" , replace 

        eststo m1: reghdfe y x1 x2 , absorb(id1) 
        quietly estadd local fe1 "Yes", replace
        quietly estadd local fe2 "No" , replace 

        eststo m2: reghdfe y x1 x2 , absorb(id1 id2) 
        quietly estadd local fe1 "Yes", replace
        quietly estadd local fe2 "Yes" , replace 

        eststo m3: reghdfe y x1-x7 , absorb(id1 id2) 
        quietly estadd local fe1 "Yes", replace
        quietly estadd local fe2 "Yes" , replace 

        timer off 2

        #delimit ;
        esttab m0 m1 m2 m3 using "$root/output/tables/statareg.tex", 
	    replace label se star(* 0.10 ** 0.05 *** 0.01) 
        s(fe1 fe2 N,label("FE 1" "FE 2" "Observations")) 
        booktabs;
        #delimit cr


        