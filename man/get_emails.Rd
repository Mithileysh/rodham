% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_emails.R
\name{get_emails}
\alias{get_emails}
\title{Get emails and its contents}
\usage{
get_emails(release, save.dir = getwd(), extractor)
}
\arguments{
\item{release}{Name of the batch of release of emails; see details.}

\item{save.dir}{Directory where to save the extracted text defaults to
\code{getwd()}}

\item{extractor}{Full path to pdf extractor (text to pdf), see details.}
}
\value{
Fetches email zip file from the WSJ and extract text files in
\code{save.dir}, returns full path to directory that contains parsed txt
files.
}
\description{
Get the content of Hillary Rodham Clinton's emails by release.
}
\details{
Below are the valid values for \code{release}; follows the
\href{http://graphics.wsj.com/hillary-clinton-email-documents/}{WSJ} naming
convention.
\itemize{
\item Benghazi
\item June
\item July
\item August
\item September
\item October
\item November
\item January 7
\item January 29
\item February 19
\item february 29
\item December
\item Non-disclosure
}

The \code{extractor} argument is the full path to your pdftotext.exe
extractor; visit \href{http://www.foolabs.com/xpdf/download.html}{xpdf} to
download or try \code{\link{get_xpdf}} which attempts to download and
unzip the text to pdf extractor. See examples.
}
\examples{
\dontrun{
# get xpdf extractor
ext <- get_xpdf()

# create
dir.create("./emails")

# get emails released in august
emails_aug <- get_emails(release = "August", save.dir = "./emails",
                     extractor = ext)

# use manually downloaded extractor
ext <- "C:/xpdfbin-win-3.04/bin64/pdftotext.exe"

# get emails related to Benghazi released in December
emails_bengh <- get_emails(release = "Benghazi", extractor = ext,
                           save.dir = "./emails")

files <- list.files(emails_bengh)
content <- lapply(1:length(files), function(x){
   readLines(paste0(emails_bengh, "/", files[[x]]))
})
}

}
\author{
John Coene \email{jcoenep@gmail.com}
}
\seealso{
\code{\link{get_xpdf}}
}

