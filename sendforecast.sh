#!/bin/sh
curl http://www.yr.no/_/settspr.aspx?spr=nno > /dev/null 2>&1
curl -H 'Accept-Language: nn; nb; no' http://www.yr.no/%2fstad%2fNoreg%2fM%c3%b8re_og_Romsdal%2f%c3%98rsta%2f%c3%98rsta_kommune%2f > /opt/weather/forecast-raw
/usr/local/bin/hxextract div.yr-textforecast /opt/weather/forecast-raw | /usr/local/bin/hxnormalize -x > /opt/weather/forecast
wget -O /opt/weather/varsel.pdf https://www.yr.no/stad/Noreg/M%C3%B8re_og_Romsdal/%C3%98rsta/%C3%98rsta_kommune/varsel.pdf
#cat forecastmail
/opt/weather/buildmail.sh | /usr/sbin/sendmail eg@tussa.no
