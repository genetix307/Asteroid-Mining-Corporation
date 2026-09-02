fade = 0
image_alpha -= .01
if speed > .2 {speed -= .03 image_angle +=6} 
if speed>0 and speed<=.2 {speed-=.001}

if fade = 1 {image_alpha -= .0003}
if image_alpha < 0 {instance_destroy()}

rise+=1
if rise<5 {y-=1}
if rise>5 and rise <10 {y+=1}


image_angle+=spin

if y>room_height+40 {instance_destroy()}