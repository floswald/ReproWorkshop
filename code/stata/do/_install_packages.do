* list of ssc packages
local ssc_packages "reghdfe ftools mypkg"
    

display in red "============ Installing packages/commands from SSC ============="
display in red "== Packages: `ssc_packages'"
if !missing("`ssc_packages'") {
    foreach pkg in `ssc_packages' {
        capture which `pkg'
        if _rc == 111 {                 
            dis "Installing `pkg'"
            ssc install `pkg', replace
        }
        which `pkg'
    }
} 
else {
    display in red "== no ssc packages to install"
}

* Install latest developer's version of the package from online location
net install st0085_2.pkg, from("http://www.stata-journal.com/software/sj14-2/") replace  
