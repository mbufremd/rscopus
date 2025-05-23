% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generic_elsevier_search.R
\name{generic_elsevier_api}
\alias{generic_elsevier_api}
\title{Generic Elsevier Search}
\usage{
generic_elsevier_api(
  query = NULL,
  type = c("search", "article", "entitlement", "recommendation", "object", "fragment",
    "abstract", "affiliation", "embase", "author", "serial", "nonserial", "subject",
    "holdings", "citation-count", "citations", "metadata", "ev", "ev_records",
    "analytics"),
  search_type = c("affiliation", "author", "scopus", "scidir", "scidir-object",
    "sciencedirect", "plumx"),
  api_key = NULL,
  headers = NULL,
  content_type = c("content", "feedback"),
  root_http = "https://api.elsevier.com",
  http_end = NULL,
  verbose = TRUE,
  api_key_error = TRUE,
  ...
)
}
\arguments{
\item{query}{Query to run, not overall query, but `queryParam` query}

\item{type}{Type of search.  See \url{https://dev.elsevier.com/api_docs.html}}

\item{search_type}{Type of search if \code{type = "search"}.
See \url{https://dev.elsevier.com/api_docs.html}}

\item{api_key}{Elsevier API key}

\item{headers}{Headers passed to \code{\link[httr]{add_headers}},
passed to \code{\link[httr]{GET}}}

\item{content_type}{Is the data content or feedback?}

\item{root_http}{address to use for query}

\item{http_end}{string to add to end of http specification
(done using \code{paste0})}

\item{verbose}{Print messages from specification}

\item{api_key_error}{Should there be an error if no API key?}

\item{...}{Options passed to queryParam for \code{\link[httr]{GET}}}
}
\value{
List of elements, content and the \code{GET} request
}
\description{
Runs GET on generic Elsevier Search
}
\examples{
\dontrun{
query_string = "affil(hopkins)"
# Use affiliation query
s = generic_elsevier_api(query = query_string,
                         type = "search", search_type = "affiliation",
                         api_key = api_key,
                      verbose = FALSE)

# Use author query
s = generic_elsevier_api(query = query_string,
type = "search", search_type = "author",
api_key = api_key,
                      verbose = FALSE)

# Query abstract by pii
s = generic_elsevier_api(query = "",
                      type = "abstract", http_end = "pii/S1053811915002700",
                      api_key = api_key,
                      verbose = FALSE)
}
}
