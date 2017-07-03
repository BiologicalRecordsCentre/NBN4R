context("Test specieslist")

thischeck=function() {
    test_that("specieslist returns empty data.frame for no results", {
        skip_on_cran()
        skip("Not working on NBN 500 code")
        x <- specieslist("dfjknnaklhkjf",wkt="POLYGON((-3 56,-4 56,-4 57,-3 57,-3 56))",fq="rank:species")
        expect_is(x,"data.frame")
        expect_equal(nrow(x),0)
    })

    test_that("specieslist checks fq fields", {
        skip_on_cran()
        skip("Not working on NBN 500 code")
        ## rk_genus is the BIE field name, but specieslist uses occurrence fields, which is just "genus"
        expect_warning(x <- specieslist(wkt="POLYGON((-3 56,-4 56,-4 57,-3 57,-3 56))",fq="rk_genus:Macropus"))
        expect_equal(nrow(x),0)
        x <- specieslist(wkt="POLYGON((-3 56,-4 56,-4 57,-3 57,-3 56))",fq="genus:Macropus")
        expect_gt(nrow(x),0)
    })
}
check_caching(thischeck)

thischeck = function() {
  test_that("specieslist arguments in NBN4R package match arguments in ALA4R package", {
    expect_named(formals(specieslist),names(formals(ALA4R::specieslist)),ignore.order = TRUE)
  })
}
check_caching(thischeck)