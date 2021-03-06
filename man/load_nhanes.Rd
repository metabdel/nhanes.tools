% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_datasets.R
\name{load_nhanes}
\alias{load_nhanes}
\title{Load selected NHANES files for a specific year}
\usage{
load_nhanes(f = "", yr, data_dir = "./data", lab = FALSE)
}
\arguments{
\item{f}{= nhanes file (no suffix -- just main file code like "mcq" and not "mcq_f" or "mcq_f.rds")}

\item{yr}{= first year of wave,}

\item{data_dir}{= The directory in which all of your NHANES subdirectories (one for each year) reside.  Default is the project "data" subdirectory (i.e., "./data") but if your data are elsewhere, you must specify the directory.  Keep in mind that this will be a directory that contains all of your NHANES subdirectories.  It is NOT the subdirectory for a specific year.  Do not use a slash (/) at the end.}

\item{lab}{= indicator of whether the label file should be included (if FALSE, then data file will be retrieved)}
}
\value{
Returns a dataframe (a data.table) with the requested file.  This function can be used as a stand-alone function to get a single file, or it can be used with the load_merge function to do multiple files
}
\description{
Load selected NHANES files for a specific year
}
\examples{
\dontrun{
Load single data files
demographics <- load_nhanes("demo", 2003)
med_cond_ques <- load_nhanes("mcq", 2009)

# Load single label files
demographics_labels <- load_nhanes("demo", 2003, lab = TRUE)
med_cond_ques_labels <- load_nhanes("mcq", 2009, lab = TRUE)
}
}

