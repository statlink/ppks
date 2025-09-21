\name{colppks}
\alias{colppks}
\title{
Permutation Based Paired Kolmogorov-Smirnov Test 
}

\description{
Permutation Based Paired Kolmogorov-Smirnov Test 
}

\usage{
colppks(x, y, R = 999)
}

\arguments{
\item{x}{
A numerical matrix with data.
}
\item{y}{
A numerical matrix with data.
}
\item{R}{
The number of permutations to perform.
}
}

\details{
The permutation based Kolmogorov-Smirnov test for paired samples (Wang W.S., Amsler C. and Schmidt, P., 2025) is performed.
The x and y matrices contain the paired observations. The i-th column of x is paired with the i-th column of y.
}

\value{
A vector with permutation based p-values. Each p-value corresponds to a column in the matrices.
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
x <- matrix( rnorm(30 * 10), ncol = 10 )
y <- x + rnorm(30 * 10)
colppks(x, y)
}

