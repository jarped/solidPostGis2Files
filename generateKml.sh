echo '<?xml version="1.0" encoding="UTF-8"?><kml xmlns="http://www.opengis.net/kml/2.2">	<Document>		<name>Reguleringsplaner Eksempler</name>		<open>1</open>		    <Style id="transRedPoly">      <LineStyle>        <width>1.5</width>      </LineStyle>      <PolyStyle>        <color>7d0000ff</color>      </PolyStyle>    </Style><Folder><name>Reguleringsplaner</name><visibility>1</visibility>' > $1
./generateSql.sh kml.sql $1.tmp
cat $1.tmp >> $1
rm $1.tmp
echo "</Folder></Document></kml>" >> $1
sed -i 's/<Polygon><outerBoundaryIs>/<Polygon><altitudeMode>absolute<\/altitudeMode><outerBoundaryIs>/g' $1
#<Polygon><outerBoundaryIs>
