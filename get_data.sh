#!/usr/bin/env bash

# All of the years for which any data exists for any type of data
for year in 08 09 10 11 12 13
do
  # All possible month names - for some reason gas uses "april" instead of "apr"
  for month in jan feb mar apr april may jun jul aug sep oct nov dec
  do
    wget --no-clobber http://cea.nic.in/archives/coal_monthly/${month}${year}.pdf -O pdf/coal/${month}${year}.pdf >> out.log 2>&1
    wget --no-clobber http://www.cea.nic.in/reports/monthly/fuel_sup_consm_rep/gas%20based/${month}${year}.pdf -O pdf/gas/${month}${year}.pdf >> out.log 2>&1
    wget --no-clobber http://cea.nic.in/archives/hydro_reserve/${month}${year}.pdf -O pdf/hydro/${month}${year}.pdf >> out.log 2>&1
  done
done

# Delete any empty files which we get if we don't have a particular type of
# data for a given month name of a given year
find coal -empty -exec rm {} \;
find gas -empty -exec rm {} \;
find hydro -empty -exec rm {} \;
