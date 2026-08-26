if other.y<=room_height {

if other.boss=0 {
other.frozen=150
}

if other.shield<=0 {
other.hp-=attack_damage
other.damaged=15

instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(x-5,y-(32+random(8)),depth,effect_show_damage).myDamage=attack_damage
instance_destroy()
}

if other.shield>0 {
other.shield-=1
instance_create_depth(x,y-8,depth,effect_show_damage).myDamage=0
instance_destroy()
}

if store.code_blood=1 
{
repeat 2 instance_create_depth(random_range(x-4,x+4),random_range(y-4,y+4),depth-10,blood_splatter)
repeat 1 instance_create_depth(random_range(x-8,x+8),random_range(y-8,y+8),depth-10,gore)	
}

}