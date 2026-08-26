alarm[0]=60
spawn=25+(store.current_stage*3)+hud.extra_spawn
if store.current_stage>20 {spawn=50+(store.current_stage)+hud.extra_spawn}
spawn_boss=1
random_boss=0

//CARDS
//Blood Moon Card
if store.card_slot_1 = 7 or store.card_slot_2 = 7 or store.card_slot_3 = 7 or store.card_slot_4 = 7 or store.card_slot_5 = 7
	{
		spawn+=2+store.card_lvl_blood_moon
	}