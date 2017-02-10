cat $1 | psql -A -t -h 172.19.10.82 -Upostgres -dregplan3d -o $2
