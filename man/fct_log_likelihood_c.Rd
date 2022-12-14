% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{fct_log_likelihood_c}
\alias{fct_log_likelihood_c}
\title{Estimating log-likelihood}
\usage{
fct_log_likelihood_c(
  categorial_sizes,
  aem,
  obs_pattern_shape,
  obs_pattern_frq,
  categorical_levels
)
}
\arguments{
\item{categorial_sizes}{\code{Vector} containing the sizes of the different
categories. That is amount of a category on all cases.}

\item{aem}{\code{Matrix} in aem form. This matrix reports the true category
in the rows and the assigned categories in the columns. The cells represent
the probabilities that a coding unit of category i is assigned to category j.}

\item{obs_pattern_shape}{\code{Matrix} containing the unique patterns found
in the data. Ideally this matrix is generated by the function
\code{get_patterns()}.}

\item{obs_pattern_frq}{\code{Vector} containing the frequencies of the
patterns. Ideally it is generated by the the function
\code{get_patterns()}.}

\item{categorical_levels}{\code{Vector} containing all possible categories of
the content analysis.}
}
\value{
Returns the log likelihood as a single numeric value.
}
\description{
Function written in \code{C++} estimating the log likelihood of a given
parameter set.
}
\references{
Berding, Florian, and Pargmann, Julia (2022).Iota Reliability Concept
of the Second Generation.Measures for Content Analysis Done by
Humans or Artificial Intelligences. Berlin: Logos.
https://doi.org/10.30819/5581
}
