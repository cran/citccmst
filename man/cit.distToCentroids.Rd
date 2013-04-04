\name{cit.distToCentroids}
\alias{cit.distToCentroids}
\title{cit.distToCentroids}
\description{calculate distance between individuals and centroids; used in \code{cit.centroids()}}
\usage{cit.distToCentroids(d,centroids,dist.meth=c("spearman","euclidian","maximum","manhattan","canberra","binary","minkowski","pearson","dlda","dqda"),maxDist=0.5,d.isPretreated=FALSE,sdifftop=NULL,sdisttocent=NULL,verbose=FALSE)}
\arguments{
\item{d}{a \code{data.frame} of numeric data}
\item{centroids}{object obtained via a call to \code{cit.centroids()} (see slot 'centroids')}
\item{dist.meth}{distance method used to calculate distance between individuals (columns in \code{d}) and centroids}
\item{maxDist}{individuals for which nearest centroid is above this threshold are discarted (used only if \code{dis.meth} = \code{"pearson"} or \code{"spearman"})}
\item{d.isPretreated}{indicate wether \code{d} is pretreated (row aggregation, row centering)...for internal use}
\item{sdifftop}{cut-off on the diffences between distances to centroids. If the distance is inferior to this cut-off for n centroids the sample is assigned to the n groups in the output variable predmixed. If NULL, the cut-off is defined as the 1st decile of the difference between the top 2 closest centroids on data used to compute centroids.}
\item{sdisttocent}{cut-off on the mad (median absolute deviation) of distances to the centroid to define a sample as outlier. If the distance to the centroid of the assigned group is superior to \code{sdisttocent}*mad(distances of centroids samples to this centroid)}
\item{verbose}{boolean if output should be displayed}
}
\value{a \code{list} giving the distance between individuals and centroids and the predicted class for each individuals
}
\author{Aurelien de Reynies, Laetitia Marisa}
\keyword{internal}
\note{This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact \url{CITR@ligue-cancer.net}}
