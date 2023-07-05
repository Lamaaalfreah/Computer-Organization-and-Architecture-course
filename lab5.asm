# SurfaceArea = (0.4)*(pi)*(radius)^2
# Volume = ((4.0 * pi) / 3) * (radius)^3
.data 
surfaceAreaMsg: .asciiz "\n The result value of surface area is " 
voiumeMsg: .asciiz "\n The result value of volume is "
RE: .float 5.6 
PI: .float 3.14 
C: .float 4.00
three :  .float 3.0
v: .float 0.0

 .text 
main: 
l.s $f0,PI #load pi value 
l.s $f1,RE #load radius value
l.s $f4, C #load 4

mul.s $f12,$f4,$f0    #get 4*pi
mul.s $f2,$f1,$f1     #get radius ^2
mul.s $f12,$f12,$f2   #get 4*pi*radius ^2

#Call system to print surfaceAreaMsg 
li $v0,4 
la $a0,surfaceAreaMsg 
syscall

#Call system to print result value 
li $v0,2 
syscall

l.s $f3,three #load 3
div.s $f12,$f12,$f3 #get 4*pi*radius ^2/3
mul.s $f12,$f12,$f1 #get 4*pi*radius ^3/3


#Call system to print voliumeMsg 
li $v0,4 
la $a0,voiumeMsg 
syscall

#Call system to print result value 
li $v0,2 
syscall

li $v0,10
syscall