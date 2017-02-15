echo '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3.0//EN" "http://www.web3d.org/specifications/x3d-3.0.dtd"><X3D><Scene><Transform>' > $1
./generateSql.sh x3d.sql $1.tmp
cat $1.tmp >> $1
rm $1.tmp
echo '</Transform></Scene></X3D>' >> $1
