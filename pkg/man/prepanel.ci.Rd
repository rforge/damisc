\name{prepanel.ci}
\alias{prepanel.ci}
\title{Lattice prepanel function for confidence intervals}
\description{This prepanel function is defined so as to allow room for all confidence intervals plotted in a lattice display. Note, both lower and upper must be passed directly to \code{xyplot} as they will be passed down to the prepanel function.}
\usage{
	prepanel.ci(x,y,subscripts, lower,upper)
}
\arguments{
  \item{x,y}{Data from the call to \code{xyplot}.}
  \item{subscripts}{Variable used to created the juxtaposed panels.}
  \item{lower, upper}{95\% lower and upper bounds of \code{y}.}
}
\value{
	A list giving the ranges and differences in ranges of x and the lower and upper bounds of y.
}
\author{Dave Armstrong (UW-Milwaukee, Department of Political Science)}
\examples{
library(car)
library(lattice)
data(Ornstein)
mod <- lm(interlocks ~ log(assets)*nation, data=Ornstein)
mod.out <- intQualQuant(mod, c("log(assets)", "nation"), 
	n=25)
xyplot(fit ~ x | contrast, data=mod.out, 
	xlab = "Assets", ylab = "Difference In Fitted Values", 
	lower=mod.out$lower, upper=mod.out$upper, zl=TRUE, 
	prepanel=prepanel.ci, panel=panel.ci)
}

