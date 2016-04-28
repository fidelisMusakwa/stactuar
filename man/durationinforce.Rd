\name{durationinforce}
\alias{durationinforce}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Duration in-force for a set of observations.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function for computing the duration in force for a set of observations. Here, duration in force means the average time to an event of interest.
}
\usage{
durationinforce(time, surv)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{time}{
%%     ~~Describe \code{time} here~~
  A vector of ordered observed time to an event of interest.
}
  \item{surv}{
%%     ~~Describe \code{surv} here~~
A vector of the corresponding survival probability at an observed time to an event of interest.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The arguments time and surv are typically obtained from a survival object.

Duration in force is estimated as Kaplan-Meier's estimator of the mean time to an event of interest.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Fidelis T Musakwa
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (time, surv)
{
    .Call("stactuar_durationinforce", PACKAGE = "stactuar", time,
        surv)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~Kaplan-Meier mean time to event }
\keyword{ ~Duration In Force }% __ONLY ONE__ keyword per line
