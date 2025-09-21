\name{ppks}
\alias{ppks}
\title{
Permutation Based Paired Kolmogorov-Smirnov Test 
}

\description{
Permutation Based Paired Kolmogorov-Smirnov Test 
}

\usage{
ppks(x, y, R = 999)
}

\arguments{
\item{x}{
A numerical vector with data.
}
\item{y}{
A numerical vector with data.
}
\item{R}{
The number of permutations to perform.
}
}

\details{
The permutation based Kolmogorov-Smirnov test for paired samples (Wang W.S., Amsler C. and Schmidt, P., 2025) is performed. 
The x and y vectors contain the paired observations.
}

\value{
The permutation based p-value.
}

\references{
Wang W.S., Amsler C. and Schmidt, P. (2025). A randomly swapped bootstrap for paired data: testing equality of distribution for correlated samples. 
Empirical Economics, To appear.
https://link.springer.com/article/10.1007/s00181-025-02779-0
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}


\examples{
x <- rnorm(30)
y <- x + rnorm(30)
ppks(x, y)
}

