attack_damage=store.mine_damage
attack_effect=""
critical_chance=store.mine_critical_chance
move_speed=store.mine_move_speed
speed=move_speed
//type="Physical"
//ability=""
image_alpha=0
alarm[0]=8//-round(store.game_speed)
alarm[1]=1
multishot_offset=0
bounce=0
base_damage = attack_damage;
base_crit = critical_chance;
distance_traveled = 0;
//direction=tower.focus_direction+multishot_offset
audio_play_sound(sfx_title_click,1,false,.25,,.75+random(.25))

////Bouncy Arrow Card
//if store.card_slot_1 = 11 or store.card_slot_2 = 11 or store.card_slot_3 = 11 or store.card_slot_4 = 11
//	{
//		bounce=store.card_lvl_bouncy
//	}
	
sound_fade=0