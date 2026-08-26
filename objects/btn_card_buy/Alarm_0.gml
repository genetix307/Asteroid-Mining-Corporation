audio_play_sound(sfx_click,1,false)
effect_btn()

if greyed_out=0 {
store.gems -= store.card_cost
store.card_cost +=2
//if store.card_cost > 250 {store.card_cost = 250}

//if (store.challenge_a=2 or store.challenge_b=2 or store.challenge_c=2) and store.goal_collector<2+(store.lvl_collector)
//		{
//		store.goal_collector+=1
//		if store.goal_collector>=2+(store.lvl_collector) {store.challenge_flag=1}
//		}
		
room = rm_open_card	
}