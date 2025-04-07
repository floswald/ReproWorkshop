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
## R packages used

<table>
<thead>
<tr>
<th style="text-align: left;">Package</th>
<th style="text-align: left;">Version</th>
<th style="text-align: left;">Citation</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">base</td>
<td style="text-align: left;">4.4.2</td>
<td style="text-align: left;"><span class="citation" data-cites="base">R
Core Team (2024)</span></td>
</tr>
<tr>
<td style="text-align: left;">data.table</td>
<td style="text-align: left;">1.17.0</td>
<td style="text-align: left;"><span class="citation"
data-cites="datatable">Barrett et al. (2025)</span></td>
</tr>
<tr>
<td style="text-align: left;">dreamerr</td>
<td style="text-align: left;">1.4.0</td>
<td style="text-align: left;"><span class="citation"
data-cites="dreamerr">L. Berge (2023)</span></td>
</tr>
<tr>
<td style="text-align: left;">fixest</td>
<td style="text-align: left;">0.12.1</td>
<td style="text-align: left;"><span class="citation"
data-cites="fixest">Bergé (2018)</span></td>
</tr>
<tr>
<td style="text-align: left;">Formula</td>
<td style="text-align: left;">1.2.5</td>
<td style="text-align: left;"><span class="citation"
data-cites="Formula">Zeileis and Croissant (2010)</span></td>
</tr>
<tr>
<td style="text-align: left;">logger</td>
<td style="text-align: left;">0.4.0</td>
<td style="text-align: left;"><span class="citation"
data-cites="logger">Daróczi and Wickham (2024)</span></td>
</tr>
<tr>
<td style="text-align: left;">numDeriv</td>
<td style="text-align: left;">2016.8.1.1</td>
<td style="text-align: left;"><span class="citation"
data-cites="numDeriv">Gilbert and Varadhan (2019)</span></td>
</tr>
<tr>
<td style="text-align: left;">Rcpp</td>
<td style="text-align: left;">1.0.14</td>
<td style="text-align: left;"><span class="citation"
data-cites="Rcpp2011">Eddelbuettel and François (2011)</span>; <span
class="citation" data-cites="Rcpp2013">Eddelbuettel (2013)</span>; <span
class="citation" data-cites="Rcpp2018">Eddelbuettel and Balamuta
(2018)</span>; <span class="citation" data-cites="Rcpp2025">Eddelbuettel
et al. (2025)</span></td>
</tr>
<tr>
<td style="text-align: left;">renv</td>
<td style="text-align: left;">1.0.11</td>
<td style="text-align: left;"><span class="citation"
data-cites="renv">Ushey and Wickham (2024)</span></td>
</tr>
<tr>
<td style="text-align: left;">sandwich</td>
<td style="text-align: left;">3.1.1</td>
<td style="text-align: left;"><span class="citation"
data-cites="sandwich2004">Zeileis (2004)</span>; <span class="citation"
data-cites="sandwich2006">Zeileis (2006)</span>; <span class="citation"
data-cites="sandwich2020">Zeileis, Köll, and Graham (2020)</span></td>
</tr>
<tr>
<td style="text-align: left;">stringmagic</td>
<td style="text-align: left;">1.1.2</td>
<td style="text-align: left;"><span class="citation"
data-cites="stringmagic">L. R. Berge (2024)</span></td>
</tr>
<tr>
<td style="text-align: left;">zoo</td>
<td style="text-align: left;">1.8.13</td>
<td style="text-align: left;"><span class="citation"
data-cites="zoo">Zeileis and Grothendieck (2005)</span></td>
</tr>
</tbody>
</table>

**You can paste this paragraph directly in your report:**

We used R version 4.4.2 (R Core Team 2024) and the following R packages:
data.table v. 1.17.0 (Barrett et al. 2025), dreamerr v. 1.4.0 (L. Berge
2023), fixest v. 0.12.1 (Bergé 2018), Formula v. 1.2.5 (Zeileis and
Croissant 2010), logger v. 0.4.0 (Daróczi and Wickham 2024), numDeriv v.
2016.8.1.1 (Gilbert and Varadhan 2019), Rcpp v. 1.0.14 (Eddelbuettel and
François 2011; Eddelbuettel 2013; Eddelbuettel and Balamuta 2018;
Eddelbuettel et al. 2025), renv v. 1.0.11 (Ushey and Wickham 2024),
sandwich v. 3.1.1 (Zeileis 2004, 2006; Zeileis, Köll, and Graham 2020),
stringmagic v. 1.1.2 (L. R. Berge 2024), zoo v. 1.8.13 (Zeileis and
Grothendieck 2005).

## Package citations

Barrett, Tyson, Matt Dowle, Arun Srinivasan, Jan Gorecki, Michael
Chirico, Toby Hocking, Benjamin Schwendinger, and Ivan Krylov. 2025.
*<span class="nocase">data.table</span>: Extension of
“<span class="nocase">data.frame</span>”*.
<https://CRAN.R-project.org/package=data.table>.

Berge, Laurent. 2023. *<span class="nocase">dreamerr</span>: Error
Handling Made Easy*. <https://CRAN.R-project.org/package=dreamerr>.

Berge, Laurent R. 2024. *<span class="nocase">stringmagic</span>:
Character String Operations and Interpolation, Magic Edition*.
<https://CRAN.R-project.org/package=stringmagic>.

Bergé, Laurent. 2018. “Efficient Estimation of Maximum Likelihood Models
with Multiple Fixed-Effects: The R Package FENmlm.” *CREA Discussion
Papers*, no. 13.

Daróczi, Gergely, and Hadley Wickham. 2024.
*<span class="nocase">logger</span>: A Lightweight, Modern and Flexible
Logging Utility*. <https://daroczig.github.io/logger/>.

Eddelbuettel, Dirk. 2013. *Seamless R and C++ Integration with Rcpp*.
New York: Springer. <https://doi.org/10.1007/978-1-4614-6868-4>.

Eddelbuettel, Dirk, and James Joseph Balamuta. 2018.
“<span class="nocase">Extending R with C++: A Brief Introduction to
Rcpp</span>.” *The American Statistician* 72 (1): 28–36.
<https://doi.org/10.1080/00031305.2017.1375990>.

Eddelbuettel, Dirk, Romain Francois, JJ Allaire, Kevin Ushey, Qiang Kou,
Nathan Russell, Iñaki Ucar, Doug Bates, and John Chambers. 2025. *Rcpp:
Seamless r and c++ Integration*.
<https://CRAN.R-project.org/package=Rcpp>.

Eddelbuettel, Dirk, and Romain François. 2011. “Rcpp: Seamless R and C++
Integration.” *Journal of Statistical Software* 40 (8): 1–18.
<https://doi.org/10.18637/jss.v040.i08>.

Gilbert, Paul, and Ravi Varadhan. 2019.
*<span class="nocase">numDeriv</span>: Accurate Numerical Derivatives*.
<https://CRAN.R-project.org/package=numDeriv>.

R Core Team. 2024. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

Ushey, Kevin, and Hadley Wickham. 2024.
*<span class="nocase">renv</span>: Project Environments*.
<https://CRAN.R-project.org/package=renv>.

Zeileis, Achim. 2004. “Econometric Computing with HC and HAC Covariance
Matrix Estimators.” *Journal of Statistical Software* 11 (10): 1–17.
<https://doi.org/10.18637/jss.v011.i10>.

———. 2006. “Object-Oriented Computation of Sandwich Estimators.”
*Journal of Statistical Software* 16 (9): 1–16.
<https://doi.org/10.18637/jss.v016.i09>.

Zeileis, Achim, and Yves Croissant. 2010. “Extended Model Formulas in R:
Multiple Parts and Multiple Responses.” *Journal of Statistical
Software* 34 (1): 1–13. <https://doi.org/10.18637/jss.v034.i01>.

Zeileis, Achim, and Gabor Grothendieck. 2005.
“<span class="nocase">zoo</span>: S3 Infrastructure for Regular and
Irregular Time Series.” *Journal of Statistical Software* 14 (6): 1–27.
<https://doi.org/10.18637/jss.v014.i06>.

Zeileis, Achim, Susanne Köll, and Nathaniel Graham. 2020. “Various
Versatile Variances: An Object-Oriented Implementation of Clustered
Covariances in R.” *Journal of Statistical Software* 95 (1): 1–36.
<https://doi.org/10.18637/jss.v095.i01>.