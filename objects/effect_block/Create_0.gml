image_alpha = 3.5
//if store.effects=0 {instance_destroy()}
depth=-y-1000
store.blocks+=1


////Quick Challenge
//if (store.challenge_a=7 or store.challenge_b=7 or store.challenge_c=7) and store.goal_defender<5*store.lvl_defender
//	{
//	  store.goal_defender+=1
//	  if store.goal_defender>=5*store.lvl_defender {store.challenge_flag=1}
//	}

////Critical Gold Card
//if store.card_slot_1 = 14 or store.card_slot_2 = 14 or store.card_slot_3 = 14 or store.card_slot_4 =14
//	{
//		store.gold +=15+store.card_lvl_shield_gold*15
//	}