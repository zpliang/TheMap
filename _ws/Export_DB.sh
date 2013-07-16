# purpose: export data into vertice file and edge file.
# usage: [==] <DB name> 

dbname=$1
if [ -z ${dbname} ]; then dbname='phise'; fi

# export obj and tags
echo "
select o.n,t.text from obj as o, tag as t where (o.tag=t.k);
" > sql_1.tmp
psql ${dbname} -At -F, -f sql_1.tmp > ${dbname}_v.tmp

# export edges 
echo "
select i,o,io from arrow ;
" > sql_2.tmp
psql ${dbname} -At -F, -f sql_2.tmp > ${dbname}_e.tmp





