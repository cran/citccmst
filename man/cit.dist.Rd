\name{cit.dist}
\alias{cit.dist}
\title{cit.dist}
\description{This function computes and returns the distance matrix computed by using the specified distance measure to compute the distances between the rows of a data matrix.}
\usage{cit.dist(x,meth="pearson",use="pairwise.complete.obs",diag=FALSE,upper=FALSE,p=2,replaceNA=TRUE) }
\arguments{
\item{x}{a numeric matrix, data frame or "dist" object.}
\item{meth}{the distance measure to be used. This must be one of "pearson","spearman","euclidean", "maximum", "manhattan", "canberra", "binary" or "minkowski". Any unambiguous substring can be given.}
\item{use}{ method for computing covariance when NAs, choice between "pairwise.complete.obs", "all.obs" and "complete.obs" (cf cor function parameter)}
\item{diag}{logical value indicating whether the diagonal of the distance matrix should be printed}
\item{upper}{logical value indicating whether the upper triangle of the distance matrix should be printed}
\item{p}{the power of the Minkowski distance.}
\item{replaceNA}{a boolean indicating if NA value should be replace by}
}
\value{required
}
\author{Aurelien de Reynies, Mickael Guedj}
\keyword{internal}
\seealso{\link[stats]{dist}}
\note{This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact \url{CITR@ligue-cancer.net}}
