\name{intFacQuant}
\alias{intFacQuant}
\title{Presenting Interacionts between Continuous and Factor Variables}
\description{Produces data or plots of the predicted category difference for factor variables conditional on the values of the continuous variable in the interaction.}
\usage{
	intFacQuant(obj, vars, nvals=100, plot=FALSE)
}
\arguments{
  \item{obj}{A linear model object (object of class \code{lm}).}
  \item{vars}{A vector of the two variables involved in the interaction.}
  \item{nvals}{Number of values for the continuous variable, the function makes a sequence over the range of the variable with \code{nvals} equally spaced values.}
  \item{plot}{Produces a plot if \code{TRUE} or returns the predicted differences, lower and upper confidence bounds, and values of the continuous variable for inspection or plotting by the user.}
}
\value{
Either a plot or a data frame depending on the argument \code{plot}.  If data, the variables are:
\item{x}{The values of the continuous variable in the interaction.}
\item{est}{The predicted difference between two categories.}
\item{lower}{Lower 95 percent confidence bound.}
\item{upper}{Upper 95 percent confidence bound.}
\item{contr}{The two categories involved in the difference, in the form of Category A - Category B.}
If a plot is returned, 
\item{p}{A trellis plot which can be manipulated with the \code{update} function.}
}
\author{Dave Armstrong (UW-Milwaukee, Department of Political Science)}
\examples{
data(OrchardSprays)
mod <- lm(decrease ~ colpos*treatment, data=OrchardSprays)
intFacQuant(mod, c("colpos", "treatment"), plot=TRUE)
}