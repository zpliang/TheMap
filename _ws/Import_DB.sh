# purpose: import data

db=phise

tbl=obj
source sp1.sh
tbl=tag
source sp1.sh
tbl=arrow
source sp1.sh

# here sp1.sh is 
# "touch data_${tbl}.txt
# grep -v "^#" data_${tbl}.txt > dt${tbl}.tmp
# fp=`readlink -f dt${tbl}.tmp`
# psql $db -c "copy ${tbl} from '${fp}' with CSV header"
# "
