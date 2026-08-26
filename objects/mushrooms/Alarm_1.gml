// Genetix Studio
if hud.game_paused = 0 {
audio_play_sound(sfx_harvest,1,false)
//store.mushrooms_harvested +=1
store.gold += 10//+(hud.perk_lvl_funguy*5)
store.gold_earned += 10//+(hud.perk_lvl_funguy*5)

//Card Forager
//if store.card_slot_1 = 13 or store.card_slot_2 = 13 or store.card_slot_3 = 13 or store.card_slot_4 = 13
//{
//	store.gold+=((store.card_lvl_forager*3)+2)
//	store.gold_earned+=((store.card_lvl_forager*3)+2)
//}

showReward=instance_create_depth(x-24,y-20,depth-1000,show_text_yellow)
showReward.myText="+10 Gold"
store.mushrooms_harvested+=1
instance_create_depth(x,y-2,depth-1000,effect_harvest)
//instance_create_depth(x,y,depth,xp_orb_green)

////Quick Challenge
//if (store.challenge_a=4 or store.challenge_b=4 or store.challenge_c=4) and store.goal_fungi<3+(3*store.lvl_fungi)
//	{
//	  store.goal_fungi+=1
//	  if store.goal_fungi>=3+(3*store.lvl_fungi) {store.challenge_flag=1}
//	}

instance_destroy()
}


