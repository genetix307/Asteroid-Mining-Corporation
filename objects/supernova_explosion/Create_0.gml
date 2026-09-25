attack_damage=store.mine_damage
speed=0
alarm[0]=8//-round(store.game_speed)
alarm[1]=1

image_xscale=8
image_yscale=8

base_damage = attack_damage;

//direction=tower.focus_direction+multishot_offset
audio_play_sound(sfx_explosion,1,false,.25,,.75+random(.25))
	
sound_fade=0