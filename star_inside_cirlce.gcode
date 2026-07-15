
; Let's draw a star inside a circle in a 100x100 millimeters plane
g21 g90 g17 ; i set the unit of measure to mm, use the absolute coordinates and the XY plane
g0 x50 y0 z2 ; a fast travel to the point (0,0,2)
m03 s1000 ; turn the spindle ON clockwise with a spindle speed of 1000 (just a random value)
; Drawing the circle
g1 x50 y0 z-5 f2000 ; linear interpolation to the point (50,0,-5) with a feed speed of 2000mm/s
g2 x50 y100 r50 ; clockwise arc to (50,100,-5) with a radius of 50
g2 x50 y0 r50 ; clockwise arc to (50,0,-5) with a radius of 50
g0 z20 ; rise the drill to avoid mistakes
; Drawing the star (see the javascript file i used to calculate all the coordinates)
g0 x100 y50 ; fast travel to (100,50,20)
g1 x100 y50 z-5 ; lowering the drill to z=-5
g1 x66 y62 ; etc...
g1 x65 y98
g1 x44 y69
g1 x10 y79
g1 x30 y50
g1 x10 y21
g1 x44 y31
g1 x65 y2
g1 x66 y38 
g1 x100 y50
g0 z20 ; star drawn. Then move up the drill
g0 x0 y0 ; fast travel to the axes origin point
m05 ; turn off the spindle
m30 ; end the program
