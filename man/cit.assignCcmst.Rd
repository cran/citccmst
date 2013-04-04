\name{cit.assignCcmst}
\alias{cit.assignCcmst}
\title{cit.assignCcmst}
\description{assign expression data sample(s) to CIT Colon Cancer Molecular Subtype(s)}
\usage{cit.assignCcmst(  data,data.annot,data.colId="Probe.Set.ID",data.colMap=c("Probe.Set.ID","Gene.Symbol","Ensembl","UniGene.ID")[1],citccmst.annot=NULL,citccmst.colId="Probe.Set.ID",citccmst.colMap=c("Probe.Set.ID","Gene.Symbol","Ensembl","UniGene.ID")[1],dist.method="dqda",dist.difftopcentcutoff=NULL,dist.disttocentcutoff=NULL,dist.maxcutoff=NULL,plot=FALSE)}
\arguments{
\item{data}{a data.frame of expression data with id as rownames}
\item{data.annot}{a data.frame of data probes annotations}
\item{data.colId}{name of the column in data.annot containing data probes id}
\item{data.colMap}{name of the column in data.annot containing data probes names to map}
\item{citccmst.annot}{affymetrix annotation data.frame, if NULL (default) take the embedded annotation in object citccmst$data.annot}
\item{citccmst.colId}{name of the column in citccmst.annot corresponding to rownames of citccmst$data. Default "Probe.Set.ID"}
\item{citccmst.colMap}{name of the column in citccmst.annot containing the same annotation as in data.colMap}
\item{dist.method}{metric to compute distance to assign a sample to a subtype ("pearson", "dlda", "dqda","euclidian"). Default "dqda". }
\item{dist.difftopcentcutoff}{cut-off on the differences between distances to centroids. If the distance is inferior to this cut-off for n centroids the sample is assigned to the n subtypes in the output variable citccmst.mixed. If NULL, the cut-off is defined as the 1st decile of the difference between the top 2 closest centroids on data used to compute centroids.}
\item{dist.disttocentcutoff}{cut-off on the mad (median absolute deviation) of distances to the centroid to define a sample as outlier. If the distance to the centroid of the assigned subtype is superior to \code{sdisttocent}*mad(distances of centroids samples to this centroid)}
\item{dist.maxcutoff}{samples for which nearest centroid is above this threshold are discarded (used only if \code{dis.meth} = "pearson" or "spearman")}
\item{plot}{if TRUE plot an acp of cit data used to classify, and of the input data with subtype affectation and dist to centroid class}
}
\value{a data.frame with 4 columns : "citccmst" assignments to the closest of the 6 subtype centroids, "citccmst.mixed" assignment to the n closest subtypes depending on dist.difftopcentcutoff, "citccmst.core" assignments without outlier and mixed samples and citccmst.confidence a confidence assignment annotation (CORE, MIXED or OUTLIER)
}
\author{Laetitia Marisa}
\keyword{methods}
\examples{
#load(list.files(system.file("extdata", package="citccmst"), full.names=TRUE)) #load citvalid.exp.norm object
#citvalid.exp.annot <- data.frame(id=rownames(citvalid.exp.norm), stringsAsFactors=FALSE, row.names=rownames(citvalid.exp.norm) )
#citccmst <- cit.assignCcmst(     data=citvalid.exp.norm,
#                                 data.annot=citvalid.exp.annot,
#                                 data.colId="id",
#                                 data.colMap="id" ,
#                                 citccmst.colMap="Probe.Set.ID",
#                                 plot=TRUE
#                           )
#head(citccmst) 
}
\note{This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact \url{CITR@ligue-cancer.net}}
