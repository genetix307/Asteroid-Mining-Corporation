 /// @description Insert description here
// You can write your code in this editor
depth =-y-500
image_alpha = 4
store.lifesteals+=1

//Quick Challenge
//if (store.challenge_a=5 or store.challenge_b=5 or store.challenge_c=5) and store.goal_vampire<15+(15*store.lvl_vampire)
//	{
//	  store.goal_vampire+=1
//	  if  store.goal_vampire>=15+(15*store.lvl_vampire) {store.challenge_flag=1}
//	}
	
//if store.effects=0 {instance_destroy()}

//CARDS
//Critical Gold Card
if store.card_slot_1 = 8 or store.card_slot_2 = 8 or store.card_slot_3 = 8 or store.card_slot_4 = 8 or store.card_slot_5 = 8
	{
		hud.count_lifesteal+=1
		if hud.count_lifesteal>=25 {
			hud.count_lifesteal=0
			store.gold+=store.card_lvl_vampiric_wealth*50
		}
	}