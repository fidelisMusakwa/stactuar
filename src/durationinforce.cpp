#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
double durationinforce(NumericVector time, NumericVector surv) {
 double rmean = 0;
  int n = time.size();
  for (int i=0; i<n; i++) {
    if (i == 0) {rmean = time[i];
      };
    rmean += (time[i]-time[i-1])*surv[i-1];
  }
  return rmean;
}
