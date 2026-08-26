image_speed = .4+random(.2)

image_xscale=1+random(.6)
image_yscale=1+random(.6)

if store.code_blood=1 {image_xscale+=.5 image_yscale+=.5 image_speed=.3}
if 2>random(10) {instance_create_depth(random_range(x-10,x+10),random_range(y-10,y+10),depth,blood_splatter)}

//if store.effects=0 {instance_destroy()}