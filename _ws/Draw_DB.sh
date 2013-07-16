# purpose: Draw DB content as dot file.
# usage: [==] <DB name>

dbname=$1
if [ -z ${dbname} ]; then dbname='phise'; fi

echo " digraph graphname {" 
echo "# dot file for database ${dbname}"

awk -F, -f draw-v.awk ${dbname}_v.tmp
awk -F, -f draw-e.awk ${dbname}_e.tmp

echo "}"

