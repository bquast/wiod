## Test environments
* local OS X install, R 3.2.1
* ubuntu 12.04 (on travis-ci), R 3.2.1
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs. 

* checking installed package size ... NOTE
  installed size is  7.2Mb
  sub-directories of 1Mb or more:
    data   7.1Mb


## File size

CRAN Policies state:

    Packages should be of the minimum necessary size. Reasonable compression should be used for data (not just .rda files) and PDF documentation: CRAN will if necessary pass the latter through qpdf.
    As a general rule, neither data nor documentation should exceed 5MB (which covers several books). A CRAN package is not an appropriate way to distribute course notes, and authors will be asked to trim their documentation to a maximum of 5MB.

    Where a large amount of data is required (even after compression), consideration should be given to a separate data-only package which can be updated only rarely (since older versions of packages are archived in perpetuity).

This is a data-only package, as suggested in the policy stated above. It is to be used in the decompr and gvc packages.


## WIOD

This package includes all of the major World Input-Output Database tables for all the available years (1995-2011).

At the moment this is the only publicly available data base of this sort.

## License

The WIOD website does not explictly state a license, however I have obtained written permission to distribute of the lead author (Timmer), through another listed author (Gales).
