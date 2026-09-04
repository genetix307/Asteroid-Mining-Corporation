tmpCrit=1
if store.mine_critical_chance>random(100) {tmpCrit=store.mine_critical_multiplier instance_create_depth(other.x+3,other.y-2,depth-10,effect_criticalhit)}
audio_play_sound(sfx_enemy_hit,1,false,1.05-sound_fade,,.75+random(.25))

////Lifesteal
//if check_lifesteal()>random(100) and store.mod_norecovery=0 {instance_create_depth(other.x+5,other.y-12,depth-10,show_lifesteal) store.hp+=store.lifesteal_amount}

if other.shield<=0 {
other.hp-=attack_damage*tmpCrit
other.damaged=15
store.damage_dealt+=attack_damage*tmpCrit
if attack_damage*tmpCrit>store.damage_dealt_hit {store.damage_dealt_hit=store.attack_damage*tmpCrit}

instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(other.x,other.y-12,depth,effect_show_damage).myDamage=attack_damage*tmpCrit
//store.damage_dealt+=attack_damage*tmpCrit
//if attack_damage*tmpCrit >store.damage_dealt_hit {store.damage_dealt_hit=attack_damage*tmpCrit}
instance_destroy()
}

if other.shield>0 {
other.shield-=1
instance_create_depth(other.x,other.y-8,depth,effect_show_damage).myDamage=0
instance_destroy()
}
