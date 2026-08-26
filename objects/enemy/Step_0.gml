if hud.game_paused=0 and hud.game_over=0 {

//Move to range
if distance_to_object(tower)>attack_range and frozen<=0 {mp_potential_step_object(tower.x,tower.y,move_speed*store.game_speed,def_solid)}

if frozen>0 {image_speed=0} else {image_speed=1}

if move_pattern="delayedrush" and distance_to_object(tower)<300 {move_speed=1.35}

//Facing
if x>=room_width/2 {image_xscale=-1} else {image_xscale=1}

//maintenance
if damaged>0 {damaged-=1*store.game_speed}
if reload>0 {reload-=1*store.game_speed}
if frozen>0 {frozen-=1*store.game_speed}
if frozen<0 {frozen=0}
if onfire>0 {onfire-=1*store.game_speed}
if onfire<0 {onfire=0}
depth=-y
image_speed=store.game_speed

//Set Boss
if boss=1 and set_boss_bgm=0 and distance_to_object(tower)>480 {set_boss_bgm=1 audio_stop_all() audio_play_sound(bgm_boss,1,true)}

//Death
if hp<=0 {instance_destroy()}

//Attack
if reload<=0 and distance_to_object(tower)<=attack_range+25 and frozen<=0 {
if attack_type="melee" {wpn=instance_create_depth(x,y-24,depth,enemy_weapon_melee) wpn.direction=point_direction(x,y,tower.x,tower.y) wpn.attack_damage=attack_damage wpn.attack_effect=attack_effect reload=attack_speed}
if attack_type="ranged" {wpn=instance_create_depth(x,y-24,depth,enemy_weapon_ranged) wpn.direction=point_direction(x,y,tower.x,tower.y) wpn.attack_damage=attack_damage wpn.attack_effect=attack_effect reload=attack_speed}
}
}