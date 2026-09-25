
if other.shield<=0 {
other.hp-=attack_damage
other.damaged=15
store.damage_dealt+=attack_damage
if attack_damage>store.damage_dealt_hit {store.damage_dealt_hit=store.attack_damage}

instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(other.x,other.y-12,depth,effect_show_damage).myDamage=attack_damage

}
