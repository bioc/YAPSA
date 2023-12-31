% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SMC.R
\name{stat_test_subgroups}
\alias{stat_test_subgroups}
\title{Test for differences in average signature exposures between subgroups}
\usage{
stat_test_subgroups(
  in_exposures_df,
  in_subgroups_df,
  in_subgroups.field = "subgroup",
  in_PID.field = "PID"
)
}
\arguments{
\item{in_exposures_df}{Numerical data frame of the exposures (i.e.
contributions of the different signatures to the number of point mutations
per PID)}

\item{in_subgroups_df}{Data frame indicating which PID belongs to which
subgroup}

\item{in_subgroups.field}{Name indicating which column in
\code{in_subgroups_df} contains the subgroup information}

\item{in_PID.field}{Name indicating which column in \code{in_subgroups_df}
contains the PID information}
}
\value{
A list with entries \code{kruskal_df}, \code{kruskal_posthoc_list},
  \itemize{ \item \code{kruskal_df}: A data frame containing results
  (statistic and p values) of the Kruskal Wallis tests (tests for enrichment
  or depletion in the different strata for every signature independently).
  \item \code{kruskal_posthoc_list}: A list of results of pairwise posthoc
  tests carried out for those signatures where the Kruskal Wallis test
  yielded a significant p-value (carried out by
  \code{\link[PMCMRplus]{kwAllPairsNemenyiTest}}). }
}
\description{
Apply Kruskal-Wallis tests to detect differences in the signature exposures
between different subgroups. Uses \code{\link{split_exposures_by_subgroups}}.
Algorithm analogous to \code{\link{stat_test_SMC}}.
}
\examples{
 NULL

}
\seealso{
\code{\link{split_exposures_by_subgroups}}

\code{\link{stat_test_SMC}}

\code{\link[PMCMRplus]{kwAllPairsNemenyiTest}}

\code{\link[stats]{kruskal.test}}
}
