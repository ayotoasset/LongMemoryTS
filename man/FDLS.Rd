% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FDLS.R
\name{FDLS}
\alias{FDLS}
\title{Narrow band estimation of the cointegrating vector.}
\usage{
FDLS(X, Y, m)
}
\arguments{
\item{X}{data matrix.}

\item{Y}{data matrix.}

\item{m}{bandwith parameter specifying the number of Fourier frequencies.
used for the estimation of d, usually \code{floor(1+T^delta)}, where 0<delta<1.}
}
\description{
Semiparametric estimator for the cointegrating vector as suggested 
             by Robinson (1994) and discussed by Robinson and Marinucci (2003) and
             Christensen and Nielsen (2006), among others.
}
\details{
add details here. Assumes that there is no long-run coherence between the errors
         and the regressors. Consistency and Normality, Stationarity, assumptions,...
}
\examples{
T<-500
d<-0.4
beta<-1

data<-FI.sim(T, q=2, rho=0, d=c(d,0))
xt<-data[,1]
et<-data[,2]
yt<-beta*xt+et
FDLS(xt,yt,m=floor(1+T^0.4))

data<-FI.sim(T, q=2, rho=0.8, d=c(d,0))
xt<-data[,1]
et<-data[,2]
yt<-beta*xt+et
FDLS(xt,yt,m=floor(1+T^0.4))
}
\references{
Christensen, B. J. and Nielsen, M. O. (2006): Asymptotic normality
            of narrow-band least squares in the stationary fractional 
            cointegration model and volatility forecasting. Journal of Econometrics,
            133, pp. 343-371.

            Robinson, P. M., (1994): Semiparametric analysis of long-memory 
            time series. Annals of Statistics, 22, pp. 515-539.
             
            Robinson, P. M. and Marinucci, D. (2003): Semiparametric frequency
            domain analysis of fractional cointegration. In: Robinson, P. M. (Ed.),
            Time Series with Long Memory, Oxford University Press, Oxford, pp. 334-373.
}
