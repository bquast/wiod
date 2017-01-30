
context("Testing getWIOT")


## 
## Wide
## 
test.year <- sample(2000:2014, size = 1)
res <- getWIOT(period = test.year, format = "wide")
expect_equal(ncol(res), 2690)
expect_equal(nrow(res), 2472)
expect_equal(res[, unique(Year)], test.year)
expect_true(is.data.table(res))


##
## Long
## 
test.year <- sample(2000:2014, size = 1)
res <- getWIOT(period = test.year, format = "long")
## test nrow
## test ncol
expect_equal(res[, unique(Year)], test.year)
expect_true(is.data.table(res))

test.year <- sample(2000:2014, size = 1)
res <- getWIOT(period = test.year, format = "long", as.DT = FALSE)
expect_true(is.data.frame(res))
expect_false(is.data.table(res))
expect_equal(unique(res$Year), test.year)


##
## List
## 
test.year <- sample(2000:2014, size = 1)
res <- getWIOT(period = test.year, format = "list")
expect_equal(length(res), 6)
expect_equal(res$year, test.year)
expect_true(is.list(res))
expect_false(is.data.frame(res))

## test dim of all matrices
expect_equal(dim(res$Z), c(44 * 56, 44 * 56))
expect_equal(dim(res$F), c(44 * 56, 44 * 5))
expect_equal(dim(res$F), c(44 * 56, 44 * 5))
expect_equal(dim(res$va.block), c(6, 44 * 56))
expect_equal(length(res$x), c(44 * 56))
expect_equal(length(res$v), c(44 * 56))
## test if correct period
