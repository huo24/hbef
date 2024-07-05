#!/usr/bin/env bash

loggernet_pw=$(< /home/mike/shiny/scheduled_scripts/lognet_pw)
cd '/home/mike/shiny/scheduled_scripts'

while read l; do
wget -O "../restricted_QAQC/data/unh_sensor_data/$l"  "http://hbrsensor.sr.unh.edu/data/hbrloggernet/loggernetfiles_complete/realtime_data/$l" --user="hbrsensor" --password="$loggernet_pw"
done < /home/mike/shiny/scheduled_scripts/weirfiles.txt
#done < /home/mike/git/hbef/shiny/scheduled_scripts/weirfiles.txt

wget -O "../restricted_QAQC/data/unh_sensor_data/weir3_weir_3_WQual.dat" "https://hbrsensor.sr.unh.edu/data/hbrloggernet/loggernetfiles_complete/LoggerNetDir/weir3_weir_3_WQual.dat" --user="hbrsensor" --password="$loggernet_pw"
wget -O "../restricted_QAQC/data/unh_sensor_data/Weir 6 Chem_WQual.dat" "https://hbrsensor.sr.unh.edu/data/hbrloggernet/loggernetfiles_complete/LoggerNetDir/Weir 6 Chem_WQual.dat" --user="hbrsensor" --password="$loggernet_pw"

