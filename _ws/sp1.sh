touch data_${tbl}.txt
grep -v "^#" data_${tbl}.txt > dt${tbl}.tmp
fp=`readlink -f dt${tbl}.tmp`
psql $db -c "copy ${tbl} from '${fp}' with CSV header"
