% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{degMerge}
\alias{degMerge}
\title{Integrate data comming from degPattern into one data object}
\usage{
degMerge(
  matrix_list,
  cluster_list,
  metadata_list,
  summarize = "group",
  time = "time",
  col = "condition",
  scale = TRUE,
  mapping = NULL
)
}
\arguments{
\item{matrix_list}{list expression data for each element}

\item{cluster_list}{list df item from degPattern output}

\item{metadata_list}{list data.frames from each element
with design experiment. Normally \code{colData} output}

\item{summarize}{character column to use to group samples}

\item{time}{character column to use as x-axes in figures}

\item{col}{character column to color samples in figures}

\item{scale}{boolean scale by row expression matrix}

\item{mapping}{data.frame mapping table in case elements use
different ID in the row.names of expression matrix. For instance,
when integrating miRNA/mRNA.}
}
\value{
A data.frame with information on what genes are in each cluster in
all data set, and the correlation value for each pair cluster comparison.
}
\description{
The simplest case is if you want to convine the pattern profile
for gene expression data and proteomic data. It will use the first element
as the base for the integration. Then, it will loop through clusters
and run \link{degPatterns} in the second data set to detect patterns that match
this one.
}
