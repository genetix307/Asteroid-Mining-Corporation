if other.y<=room_height {
//audio_play_sound(sfx_enemy_hit,1,false)

if other.shield<=0 and other.damaged<=0 {
other.hp-=attack_damage
other.damaged=10
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(x-5,y-(32+random(8)),depth,effect_show_damage).myDamage=attack_damage
}

if other.shield>0 {
other.shield-=1
instance_create_depth(x,y-8,depth,effect_show_damage).myDamage=0
instance_destroy()
}

}