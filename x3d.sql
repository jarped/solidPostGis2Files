SELECT '<Shape>
       <Appearance>
            <Material emissiveColor=''0 0 1''/>
       </Appearance> ' ||
       ST_AsX3D(ST_RotateX(geom,-(pi()/2))) ||
      '</Shape>' As x3ddoc
FROM
public.app_rphandlingsrom;
