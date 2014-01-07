\name{cit.centroids}
\alias{cit.centroids}
\title{cit.centroids}
\description{define centroids for a given partition of individuals (columns) and calculate distance between individuals and centroids}
\usage{cit.centroids(  d,
classes,
rowCentering=c(NA,function(x)mean(x, na.rm=TRUE),function(x)median(x, na.rm=TRUE))[[3]],
rowClassesForAggregation=NULL,
rowClassesToKeep=NULL,
dist.meth=c("spearman","euclidian","maximum","manhattan",
"canberra","binary","minkowski","pearson","dlda","dqda"),
maxDist=0.5,
...)}
\arguments{
\item{d}{a \code{data.frame} of numeric data}
\item{classes}{a vector defining a partition of \code{data} columns (\code{NA} values accepted)}
\item{rowCentering}{ \code{NA}: no row centering; otherwise: function to be used for row centering}
\item{rowClassesForAggregation}{ partition of the rows , used to aggregate rows from the same class (1 aggregated row per class will be calculated)}
\item{rowClassesToKeep}{to restrict the centroid's calculation to the some aggregated rows  (= row classes)}
\item{dist.meth}{distance method used to calculate distance between individuals (columns in \code{d}) and centroids}
\item{maxDist}{individuals for which nearest centroid is above this threshold are discarted (used only if \code{dis.meth} = \code{"pearson"} or \code{"spearman"})}
\item{...}{parameters from cit.distToCentroids function}
}
\value{a \code{list} with two objects : \code{centroids} and \code{dist2Centroids}
}
\author{Aurelien de Reynies}
\keyword{internal}
\note{This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact \url{CITR@ligue-cancer.net}}
