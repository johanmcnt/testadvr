f <- function(x, y = 2) {
  browser()
  x <- 4
  x + y
}

f(2)

set.seed(45)

runif(5)
h <- function() {
  x <- 10
  g <- function() {
    f <- function() {
      x + 1
    }
    print(environment(f))
    print(ls(environment(f)))  ## list the objects in the environment
    print(parent.env(environment(f)))  ## environment(g)
    f()
  }
  print(environment(g))
  print(ls(environment(g)))
  print(parent.env(environment(g)))
  g()
}
x <- 100