% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/author_df.R
\name{process_author_name}
\alias{process_author_name}
\title{Process Author Name}
\usage{
process_author_name(
  au_id = NULL,
  last_name = NULL,
  first_name = NULL,
  affil_id = NULL,
  api_key = NULL,
  verbose = TRUE,
  headers = NULL
)
}
\arguments{
\item{au_id}{Author ID number. Overrides any first/last name argument}

\item{last_name}{last name of author}

\item{first_name}{first name of author}

\item{affil_id}{ID of affiliation (optional)}

\item{api_key}{Elsevier API key}

\item{verbose}{Print diagnostic messages}

\item{headers}{Headers passed to \code{\link[httr]{add_headers}},
passed to \code{\link[httr]{GET}}}
}
\value{
List of first/last name and author ID
}
\description{
Process author ID and names for generic use
}
\note{
This function is really to avoid duplication
}
