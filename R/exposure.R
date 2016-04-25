ear <- function(startdate, enddate, valuedate, period, inclusive = TRUE) {

  diff <- ifelse(inclusive == TRUE,
                 min(valuedate, enddate)-startdate + 1,
                 min(valuedate, enddate)-startdate)

  if (period == 'Monthly') {
    return(diff/(365.25/12))
  }

  if (period == 'Annual') {
    return(diff/365.25)
  }

  if (period == 'Quarterly') {
    return(diff/(365.25/4))
  }

  if (period == 'Semi-annual') {
    return(diff/(365.25/2))
  }

  if (period == 'Weekly') {
    return(diff/(365.25/52))
  }

  return(diff)

}
