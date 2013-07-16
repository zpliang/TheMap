# purpose: import data

db=phise
dbname=${db}

tbl=obj
source sp1.sh
tbl=tag
source sp1.sh
tbl=arrow
source sp1.sh

psql ${dbname} -c "update tag set text=btrim(text,' ');"

# here sp1.sh is 
# "touch data_${tbl}.txt
# grep -v "^#" data_${tbl}.txt > dt${tbl}.tmp
# fp=`readlink -f dt${tbl}.tmp`
# psql $db -c "copy ${tbl} from '${fp}' with CSV header"
# "
