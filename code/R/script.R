# my R script

library(fixest)
library(data.table)
library(logger)

root = "/Users/floswald/git/ReproWorkshop"

log_info("loading data from csv")

csvtime = system.time( {d = fread(file.path(root,"data","raw","data.csv"))} )

m = list()  # model collection list

log_info("running fixest models")
fetime = system.time( {
    m[["(0)"]] = feols(y ~ x1 + x2 , data = d)
    m[["(1)"]] = feols(y ~ x1 + x2 | id1, data = d)
    m[["(2)"]] = feols(y ~ x1 + x2 | id1 + id2, data = d)
    m[["(3)"]] = feols(y ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 | id1 + id2, data = d)
})
etable(m[["(0)"]],m[["(1)"]],m[["(2)"]],m[["(3)"]], tex = TRUE, replace = TRUE, file = file.path(root,"output","tables","table2.tex"))

pdf(file.path(root,"output","plots","figure1.pdf"))
coefplot(m)
dev.off()

log_info("R timings:")
log_info("reading csv: {csvtime['elapsed']} seconds")
log_info("running FE : {fetime['elapsed']} seconds")

log_info("R: done")
    