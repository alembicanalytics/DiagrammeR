% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_multiedge_count.R
\name{get_multiedge_count}
\alias{get_multiedge_count}
\title{Get the count of multiple edges}
\usage{
get_multiedge_count(graph)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph}.}
}
\value{
a vector with a single, numerical value.
}
\description{
Get a count of the number of multiple edges in the graph. Included in the
  count is the number of separate edges that share the same edge definition
  (i.e., same pair of nodes) across the entire graph. So, for example, if
  there are 2 edge definitions in the graph that involve 6 separate edge IDs,
  the count will be \code{4}.
}
\examples{
# Create a node data frame (ndf)
ndf <-
  create_node_df(
    n = 5,
    label = TRUE)

# Create an edge data frame (edf)
edf <-
  create_edge_df(
    from = c(1, 4, 4, 3, 5, 1, 3, 4),
      to = c(4, 1, 1, 2, 2, 2, 2, 1))

# Create a graph with the ndf and edf
graph <-
  create_graph(
    nodes_df = ndf,
    edges_df = edf)

# Get the total number of multiple
# edges (those edges that share an
# edge definition) in the graph
graph \%>\%
  get_multiedge_count()
}
