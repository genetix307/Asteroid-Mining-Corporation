image_alpha = 3.6
//if store.effects=0 {instance_destroy()}
depth=-y-1000


////Quick Challenge
//if (store.challenge_a=2 or store.challenge_b=2 or store.challenge_c=2) and store.goal_focused_shot<10+(15*store.lvl_focused_shot)
//	{
//	  store.goal_focused_shot+=1
//	  if store.goal_focused_shot>=10+(15*store.lvl_focused_shot) {store.challenge_flag=1}
//	}

////CARDS
////Critical Gold Card
//if store.card_slot_1 = 4 or store.card_slot_2 = 4 or store.card_slot_3 = 4 or store.card_slot_4 = 4
//	{
//		store.gold +=store.card_lvl_critgold
//	}
////Critical Heart Card
//if store.card_slot_1 = 5 or store.card_slot_2 = 5 or store.card_slot_3 = 5 or store.card_slot_4 = 5
//	{
//		store.hp +=store.card_lvl_critical_heart
//		if store.hp>store.maxhp {store.hp=store.maxhp}
//	}