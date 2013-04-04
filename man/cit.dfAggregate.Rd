\name{cit.dfAggregate}
\alias{cit.dfAggregate}
\title{cit.dfAggregate}
\description{aggregate each column of \code{d} by \code{byvar} using function \code{FUN}}
\usage{cit.dfAggregate( data, partition, MARGIN=1, fAggreg=function(x){mean(x, na.rm=TRUE)})}
\arguments{
\item{data}{a dataframe of numeric data}
\item{partition}{a vector on which to aggregate}
\item{MARGIN}{ 1 : to aggregate rows ; 2 : to aggregate columns}
\item{fAggreg}{the function to aggregate \code{data} by \code{partition}}
}
\value{the reduced data.frame \code{data}
}
\author{Aurelien de Reynies}
\keyword{internal}
\note{This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact \url{CITR@ligue-cancer.net}}
