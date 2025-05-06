# My Reproducible Research Project

> Caution: this is not meant to be an exhaustive example or indeed a template of a valid README file for your package. Please refer to [this link](https://social-science-data-editors.github.io/template_README/) for such a template. This readme here will be built up during our workshop, where we want to point out some selected aspects of the whole process.

We are building a reproducible research project. We will 

1. Download some data from a public repository and record the citation record. 📚
2. Use Stata to perform statistical analysis
3. Use R to perform some more analysys
4. Collect all results and write into a paper.

## Outline of Analysis

We want to run a two fixed effects regression in all two programming languages. We will build a table of results from each, and record the time it took to run the analysis. Along the way, we will take care to carefully record all info to reproduce our computational environment.


## Data Citation

Oswald, F. (2025). Data for Reproducibility Exercise [Data set]. Zenodo. https://zenodo.org/records/15124721

Here is a bibtex entry:

```
@dataset{oswald_2025_15124721,
author       = {Oswald, Florian},
title        = {Data for Reproducibility Exercise},
month        = apr,
year         = 2025,
publisher    = {Zenodo},
doi          = {10.5281/zenodo.15124721},
url          = {https://doi.org/10.5281/zenodo.15124721},
}
```

## Stata Package Versions

Both tables below are generated in our `_config.do` file.

> output of `mypkg` command

```
+--------------------------------+
| number    package         date |
|--------------------------------|
|    [6]     ftools   1 Apr 2025 |
|    [7]      mypkg   1 Apr 2025 |
|    [1]    reghdfe   1 Apr 2025 |
|    [2]    regsave   1 Apr 2025 |
|    [5]    rscript   1 Apr 2025 |
|--------------------------------|
|    [3]   st0085_2   1 Apr 2025 |
|    [4]    texsave   1 Apr 2025 |
+--------------------------------+
```

> output of `_print_timestamp` command

```
+-------------------------------------
Date and time:  1 Apr 2025 16:43:09
Stata version: 18.5
Updated as of: 22 May 2024
Variant:       MP
Processors:    2
OS:            Unix 
Machine type:  Mac (Apple Silicon)
Shell:         /opt/homebrew/bin/fish
+-------------------------------------
```

## Input and Output

| Paper Object |  File name |  function |
| ------------ |  --------- |  -------- |
| Table 1 |  `output/tables/statareg1.tex` |  `code/stata/do/2_regression.do` |

## Stata Runtime

0.02 minutes
