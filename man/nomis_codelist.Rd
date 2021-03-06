% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codelist.R
\name{nomis_codelist}
\alias{nomis_codelist}
\title{Nomis codelists}
\usage{
nomis_codelist(id, concept, search = NULL)
}
\arguments{
\item{id}{A string with the ID of the particular dataset. Must be specified.}

\item{concept}{A string with the variable concept to return options for. If
left empty, returns all the variables for the dataset specified by \code{id}.
Codes are not case sensitive and must be specified.}

\item{search}{Search for codes that contain a given string. The wildcard
character \code{*} can be added to the beginning and/or end of each
search string. Search strings are not case sensitive.
Defaults to \code{NULL}. Note that the search function is not very powerful
for some datasets.}
}
\value{
A tibble with the codes used to query specific concepts.
}
\description{
Nomis uses its own internal coding for query concepts. \code{nomis_codelist}
returns the codes for a given concept in a \code{tibble}, given a dataset
ID and a concept name.
Note that some codelists, particularly geography, can be very large.
}
\examples{
\donttest{
x <- nomis_codelist("NM_1_1", "item")


# Searching for codes ending with "london"
y <- nomis_codelist("NM_1_1", "geography", search = "*london")


z <- nomis_codelist("NM_161_1", "cause_of_death")
}
}
\seealso{
\code{\link{nomis_data_info}}

\code{\link{nomis_get_metadata}}

\code{\link{nomis_overview}}
}
