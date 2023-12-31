% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SMC.R
\name{stat_test_SMC}
\alias{stat_test_SMC}
\title{Apply statistical tests to a stratification (SMC)}
\usage{
stat_test_SMC(in_strat_list, in_flag = "norm")
}
\arguments{
\item{in_strat_list}{A list with entries \code{exposures_list},
\code{catalogues_list}, \code{cohort} and \code{name_list} as in the output
of \code{\link{run_SMC}}. \itemize{ \item \code{exposures_list}: The list
of \code{s} strata specific exposures Hi, all are numerical data frames
with \code{l} rows and \code{m} columns, \code{l} being the number of
signatures and \code{m} being the number of samples \item
\code{catalogues_list}: A list of \code{s} strata specific cohortwide (i.e.
averaged over cohort) normalized exposures \item \code{cohort}:
\code{subgroups_df} adjusted for plotting \item \code{name_list}: Names of
the contructed strata. }}

\item{in_flag}{If "norm", all tests are performed on normalized exposures,
otherwise the absolute exposures are taken.}
}
\value{
A list with entries \code{kruskal_df}, \code{shapiro_df},
  \code{kruskal_posthoc_list}, \itemize{ \item \code{kruskal_df}: A data
  frame containing results (statistic and p values) of the Kruskal Wallis
  tests (tests for enrichment or depletion in the different strata for every
  signature independently). \item \code{shapiro_df}: A data frame containing
  results (p values) of the Shapiro Wilk tests (tests for normal distribution
  in the different strata for every signature independently). \item
  \code{kruskal_posthoc_list}: A list of results of pairwise posthoc tests
  carried out for those signatures where the Kruskal Wallis test yielded a
  significant p-value (carried out by
  \code{\link[PMCMRplus]{kwAllPairsNemenyiTest}}). }
}
\description{
\code{stat_test_SMC} tests for enrichment or depletion in the different
strata of a stratification of the mutational catalogue for every signature
independently by applying Kruskal Wallis tests. For those signatures where
the Kruskal Wallis test gives a significant p-value, pairwise posthoc tests
are carried out by calling \code{\link[PMCMRplus]{kwAllPairsNemenyiTest}}.
Additionally all data is tested for normality by Shapiro Wilk tests, so that
the user may apply ANOVA and pairwise posthoc t-test where allowed.
}
\examples{
 NULL

}
\seealso{
\code{\link{run_SMC}}

\code{\link[PMCMRplus]{kwAllPairsNemenyiTest}}

\code{\link[stats]{kruskal.test}}

\code{\link{shapiro_if_possible}}

\code{\link[stats]{shapiro.test}}
}
