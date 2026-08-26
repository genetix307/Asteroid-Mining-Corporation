attack_damage=store.card[11]
move_speed=11
ttl=300
type="Magic"
ability=""
image_alpha=0
alarm[0]=3

if instance_number(def_enemy)>0 {
direction=point_direction(x,y,instance_nearest(x,y,def_enemy).x,instance_nearest(x,y,def_enemy).y)
} else {instance_destroy()}
