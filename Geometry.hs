module Geometry ( sphereVolume, sphereArea )
	where

import qualified Geometry.Sphere as Sphere

sphereVolume :: Float -> Float
sphereVolume radius = (4.0 / 3.0) * pi * (radius ^ 3)
  
sphereArea radius = Sphere.area radius  

rectangleArea :: Float -> Float -> Float  
rectangleArea a b = a * b  