fade = 0
image_alpha -= .0001
if speed > 0 {speed -= .05 image_angle +=6} else speed = 0

if fade = 1 {image_alpha -= .0001}
if image_alpha < 0 {instance_destroy()}

rise+=1
if rise<5 {y-=1}
if rise>5 and rise <10 {y+=1}