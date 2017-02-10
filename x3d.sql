SELECT '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE X3D PUBLIC "ISO//Web3D//DTD X3D 3.0//EN" "http://www.web3d.org/specifications/x3d-3.0.dtd">
<X3D>
  <Scene>
    <Transform>
      <Shape>
       <Appearance>
            <Material emissiveColor=''0 0 1''/>
       </Appearance> ' ||
       ST_AsX3D(ST_RotateX(geom,-(pi()/2))) ||
      '</Shape>
    </Transform>
  </Scene>
</X3D>' As x3ddoc
FROM
public.app_rphandlingsrom
--WHERE
--id=1
;
