# Increasing IPTp uptake in Nigeria

## To use this repository to **see** reports in progress:

The final version of the report will be downloadable in HTML format from the [Releases](https://github.com/gsa-oes/1715-Nigeria-IPTp/releases) page.

The [**Report**](Report) directory contains the versions of the report that are ready for reading and editing.

The [**Abstract**](Abstract) directory contains the versions of the report that are ready for reading and editing. To edit, use the [Abstract.md file](https://github.com/gsa-oes/1715-Nigeria-IPTp/blob/master/Abstract/ProjectAbstract/Abstract.md). This file is converted to pdf and html formats using the [pandoc file format conversion tool](https://pandoc.org/) either directly or via the `render()` command in `R` from the `rmarkdown` package (or by clicking on "Knit to PDF" or "Knit to HTML" from within RStudio).
 - The viewable HTML version of the Abstract is [here](https://rawgit.com/gsa-oes/1715-Nigeria-IPTp/master/Abstract/ProjectAbstract/Abstract.html).
 - The PDF version is [here](https://github.com/gsa-oes/1715-Nigeria-IPTp/blob/master/Abstract/ProjectAbstract/Abstract.pdf)

The [**Analysis**](Analysis) and [**Data**](Data) directories contain files that we are using to do the analysis or re-analysis.

Easy to read versions of the report(s) can be seen by clicking the links below:

 - The viewable HTML version of the reanalysis is [here](https://rawgit.com/gsa-oes/1715-Nigeria-IPTp/master/Analysis/ReAnalysis.html).


## To use this repository to collaborate on data analysis and report creation:

You will need to [clone the repository at the unix command line](https://help.github.com/articles/cloning-a-repository/) or [clone the repository using the github desktop app](https://help.github.com/desktop/guides/contributing/cloning-a-repository-from-github-to-github-desktop/) to your local computer.

You will then need to download the data from the secure data storage to the `Data` subdirectory.

And you can work on improving or creating analysis code using the [R markdown (.Rmd)](http://rmarkdown.rstudio.com/) files in the `Analysis` subdirectory.

To create reports that other people can see, use the `render` function in the `rmarkdown` package (or click `Knit to HTML` if you are using [RStudio](https://www.rstudio.com/products/rstudio/)).
