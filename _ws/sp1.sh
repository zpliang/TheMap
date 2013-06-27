# reusable command block

# ensure tbl not empty
if [ -z ${tbl} ] ; then echo "no table!"; exit ; fi

sp1_file_path=./data/data_${tbl}.txt
touch ${sp1_file_path}
grep -v "^#" ${sp1_file_path} > dt${tbl}.tmp
fp=`readlink -f dt${tbl}.tmp`
psql $db -c "copy ${tbl} from '${fp}' with CSV header"
