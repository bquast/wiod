wiod
=========
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/wiod)](http://cran.r-project.org/package=wiod)
[![Travis-CI Build Status](https://travis-ci.org/bquast/wiod.svg?branch=master)](https://travis-ci.org/bquast/wiod)

Data sets from the World Input Output Database, for the years 1995-2011.

This data package is to be used in conjunction with the [decompr](http://qua.st/decompr) ([CRAN](http://cran.r-project.org/package=decompr)) and [gvc](http://qua.st/gvc) ([CRAN](http://cran.r-project.org/package=gvc)) packages.


Installation
--------------
The development version, to be used **at your own peril**, is available from [GitHub](https://github.com/bquast/gvc).
Installation from GitHub is done using:

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github("bquast/wiod")
```


Usage
----------
Following installation, the package can be loaded using:

```r
library(wiod)
```

Data can be loaded using the the `data()` function, using `wiod` followed by the last two digits of the required year, as the argument, e.g.

```r
data(wiod95)
```

For information on using the package, please refer to the help files.

```r
help("wiod")
help(package = "wiod")
```
    
For examples of usage, see the function-specific help pages.


```r
help("countries")
help("industries")
help("inter95")
```

In addition to the help files we provide long-form examples in the [vignette](http://cran.r-project.org/web/packages/wiod/vignettes/wiod.html).

```r
vignette("wiod")

# or
browseVignettes("wiod")
```


Additional Information
-----------------------
An overview of the changes is available in the NEWS file.

```r
news(package="wiod")
```

There is also a blog post with information on my [personal website](http://qua.st/).

http://qua.st/wiod/


Development
-------------
Development takes place on the GitHub page.

http://github.com/bquast/wiod

Bugs can be filed on the GitHub issues page.

https://github.com/bquast/wiod/issues.

