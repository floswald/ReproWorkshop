* Stata version control
version 18

* Display reinstallation info
cap program drop _print_install
program define _print_install 
    args pdir
    di in red "******************"
    di in red "Re-installing Stata packages"
    di in red "******************"
    
    do "`pdir'/do/_install_packages.do"

    di in red "******************"
    di in red "Re-installing Stata packages: DONE"
    di in red "******************"
end

* Display system parameters and record the date and time
cap program drop _print_timestamp 
program define _print_timestamp 
    di "{hline `=min(79, c(linesize))'}"

    di "Date and time: $S_DATE $S_TIME"
    di "Stata version: `c(stata_version)'"
    di "Updated as of: `c(born_date)'"
    di "Variant:       `=cond( c(MP),"MP",cond(c(SE),"SE",c(flavor)) )'"
    di "Processors:    `c(processors)'"
    di "OS:            `c(os)' `c(osdtl)'"
    di "Machine type:  `c(machine_type)'"
    local hostname : env HOSTNAME
    local shell : env SHELL
    if !mi("`hostname'") di "Hostname:      `hostname'"
    if !mi("`shell'") di "Shell:         `shell'"
    
    di "{hline `=min(79, c(linesize))'}"
end

/* install any packages locally */
di "=== Redirecting where Stata searches for ado files ==="
capture mkdir "$stataroot/ado"
adopath - PERSONAL
adopath - OLDPLACE
adopath - SITE
sysdir set PLUS     "$stataroot/ado/plus"
sysdir set PERSONAL "$stataroot/ado"       // may be needed for some packages
sysdir

* install libraries if required
if "$install"=="1" {
    noi _print_install "$stataroot"
    mata: mata mlib index
}

di "*** Stata Packages installed this project ***"
mypkg

** print system info
noi _print_timestamp


* folder structure
cap mkdir "$root/data/processed"
cap mkdir "$root/output"
cap mkdir "$root/output/tables"
cap mkdir "$root/output/plots"

