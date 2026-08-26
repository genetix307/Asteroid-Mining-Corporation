image_alpha = 3.5
//if store.effects=0 {instance_destroy()}
depth=-y-1000
store.criticals+=1

//PERK CRITICAL GOLD
//if store.perk_lvl_criticalgold>0 {
//instance_create_depth(x,y,depth,item_gold)
//}

//Quick Challenge
//if (store.challenge_a=2 or store.challenge_b=2 or store.challenge_c=2) and store.goal_headshotking<15+(15*store.lvl_headshotking)
//	{
//	  store.goal_headshotking+=1
//	  if store.goal_headshotking>=15+(15*store.lvl_headshotking) {store.challenge_flag=1}
//	}

//CARDS
//Critical Gold Card
if store.card_slot_1 = 4 or store.card_slot_2 = 4 or store.card_slot_3 = 4 or store.card_slot_4 = 4 or store.card_slot_5 = 4
	{
		store.gold +=store.card_lvl_critgold
	}
//Critical Heart Card
if store.card_slot_1 = 5 or store.card_slot_2 = 5 or store.card_slot_3 = 5 or store.card_slot_4 = 5 or store.card_slot_5 = 5
	{
		store.hp +=store.card_lvl_critical_heart
		if store.hp>store.maxhp {store.hp=store.maxhp}
	}
