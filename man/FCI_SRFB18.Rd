% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SRFB18_LM.R
\name{FCI_SRFB18}
\alias{FCI_SRFB18}
\title{Frequency-domain test for fractional cointegration (Souza, Reise, Franco, Bondon (2018))}
\usage{
FCI_SRFB18(X, d, m, r, alpha = 0.05)
}
\arguments{
\item{X}{bivariate data matrix.}

\item{d}{known common memory parameter. However, simulations indicate that consistent memory estimation does not invalidate the test.}

\item{m}{bandwith parameter specifying the number of Fourier frequencies
used for the estimation, usually \code{floor(1+T^delta)}, where 0<delta<1.}

\item{r}{integer trimming parameter, \code{r>0}.}

\item{alpha}{desired significance level. Default is \code{alpha=0.05}.}
}
\description{
\code{FCI_CH06} Semiparametric frequency-domain test for fractional cointegration by Souza, Reise, Franco, Bondon (2018).
 Returns test statistic, critical value, testing decision and estimate of the cointegrating strength. Null hypothesis: no fractional cointegration.
}
\examples{
T<-1000
series<-FI.sim(T=T, q=2, rho=0.4, d=c(0.1,0.7), B=rbind(c(1,-1),c(0,1)))
FCI_SRFB18(series, d=0.7, m=floor(T^0.75), r=1)
series<-FI.sim(T=T, q=2, rho=0.4, d=c(0.4,0.4))
FCI_SRFB18(series, d=0.4, m=floor(T^0.75), r=1)
}
\references{
Souza, I. V. M., Reisen, V. A., Franco, G. d. C. and Bondon, P. (2018): The estimation and testing of
the cointegration order based on the frequency domain. Journal of Business & Economic Statistics, Vol. 36, No. 4, pp. 695 - 704.
}
\author{
Michelle Voges
}
