attack_damage=0
attack_effect=""
move_speed=3
ttl=120
reflected=0
show_reflect=0
image_alpha=0

//Reflect
if check_reflect()>random(100) {reflected=1}

//audio_play_sound(sfx_fire_cannon,1,false)