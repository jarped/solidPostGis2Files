SELECT 
st_askml( (a.p_geom).geom)
  FROM (SELECT ST_Dump(geom) AS p_geom from public.app_rphandlingsrom )  AS a;
