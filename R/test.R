make_fun_1 <- function() {
  function(x) {
    1 + 1
    2 + 2
    cat("fun1\n")
  }
}
make_fun_2 <- function() {
  function(x) {
    2 + 2
    1 + 1
    cat("fun2\n")
  }
}
make_fun_3 <- function() {
  function(x) {
    3 + 3
    1 + 1
    cat("fun3\n")
  }
}

make_fun_1 <- function() {
  function(x) {
    1 + 1
    2 + 2
    cat("fun1\n")
  }
}
#' @export

fun1 <- make_fun_1()

#' @export

fun3 <- make_fun_3()

#' @export

fun4 <- function(x) {
  1 + 1
  2 + 2
  cat("fun4\n")
}
fun5 <- fun4

#' @export

setGeneric("fun2", function(x) StandardGeneric("fun2"))

#' @export

setMethod("fun2", "integer", make_fun_2())

#' @export

setMethod("fun2", "numeric", fun3)
