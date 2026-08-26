depth=-10000
save_game()

game_paused=0
game_over=0
game_victory=0
//menu_tab=0
stage_complete=0
show_fade=1
show_stage=3
banner_gap=225-(11.25*string_length(store.current_area))
rounds=store.tier*10
alarm[0]=240 //Show tutorial
active_gamespeed=store.game_speed

//Misc
limitbreak_count=0
goldenshot_count=0
crate_count=0
extra_spawn=0
check_healing_salve=600
current_arrow="Basic Arrow"
current_arrow_count=0
store.game_speed=1
store.mining_wait=0 //Crystal Cavern reset
tutorial=""
current_tutorial=0
show_tutorial=0
count_lifesteal=0 //For Card
count_kills_charge=0 //For Card
count_kills_bounty=0 //For Card
count_kills_enforcedwalls=0 //For Card
count_damage_shieldgold=0 //For card

//CARDS
//Inheritance Card
if store.card_slot_1 = 2 or store.card_slot_2 = 2 or store.card_slot_3 = 2 or store.card_slot_4 = 2 or store.card_slot_5=2
	{
		if store.current_stage=1 {store.gold +=store.card_lvl_inheritance*100}
	}
//Sharpened Tip Card
if store.card_slot_1 = 3 or store.card_slot_2 = 3 or store.card_slot_3 = 3 or store.card_slot_4 = 3 or store.card_slot_5=3
	{
		if store.current_stage=1 {store.attack_damage +=ceil(store.attack_damage*(store.card_lvl_sharpened_tip*0.25))}
	}
//Fortified Tip Card
if store.card_slot_1 = 12 or store.card_slot_2 = 12 or store.card_slot_3 = 12 or store.card_slot_4 = 12 or store.card_slot_5=12
	{
		if store.current_stage=1 {store.maxhp +=ceil(store.maxhp*(store.card_lvl_fortified*0.25))store.hp=store.maxhp}
	}

//Create stuff
repeat 5 instance_create_depth(random_range(-4500,-600),random(room_height),depth,effect_cloud_shadow)
repeat round(random(7)) instance_create_depth(random_range(-800,-100),random(340),depth,bird)
instance_create_depth(device_mouse_x(0),device_mouse_y(0),depth-10,cursor_game)
instance_create_depth(tower.x,tower.y,depth+100,show_range)
instance_create_depth(tower.x,tower.y,depth+100,wave_gen)
repeat 3 if 75>random(100) {instance_create_depth(x,y,depth,mushrooms)}
if 25>random(100) {instance_create_depth(x,y,depth,mushroom_wisdom)}

audio_stop_all()
set_music()



