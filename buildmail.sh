#!/bin/sh
cat /opt/weather/forecastatthead /opt/weather/forecast /opt/weather/attatchheader
uuencode /opt/weather/varsel.pdf varsel.pdf
echo '--FCAST_bound--'

