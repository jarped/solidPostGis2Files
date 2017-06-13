cat $1 | psql -A -t -h 10.0.2.2 -Upostgres -dregplan3d -o $2
