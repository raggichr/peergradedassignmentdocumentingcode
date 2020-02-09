context("Test the basic functionality of the package")

library(dplyr)
library(maps)

setwd(system.file("extdata", package = "peergradedassignmentdocumentingcode"))

test_that("fars_read() works correctly", {
    expect_is(fars_read("accident_2015.csv.bz2"), "tbl_df")
    expect_error(fars_read("accident_2020.csv.bz2"))
})


test_that("fars_summarize_years() works correctly", {
    expect_is(fars_summarize_years(list(2013, 2014)), "tbl_df")
    expect_error(fars_summarize_years(2016))

})
