image_angle=random(360)
image_xscale=.3+random(.5)
image_yscale=.2+random(.4)

if 5+store.mining_wait>random(10) {instance_destroy()}

myItem=choose("Crystal Shard","Iron Shard","Element Shard","Oil")