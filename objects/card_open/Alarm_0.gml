// Genetix Studio
if opened = 0 
{
opened = 1
var max_cards = 15.99 //Increment this when adding new card
instance_create_depth(x,y,depth-1000,show_open_card)
my_id = floor(random(max_cards))+2 

//Get Card
if my_id = 2 {store.card_inheritance += 1}
if my_id = 3 {store.card_sharpened_tip += 1}
if my_id = 4 {store.card_critical_gold += 1}
if my_id = 5 {store.card_critical_heart += 1}
if my_id = 6 {store.card_sacrifice += 1}
if my_id = 7 {store.card_blood_moon += 1}
if my_id = 8 {store.card_vampiric_wealth += 1}
if my_id = 9 {store.card_charge += 1}
if my_id = 10 {store.card_bounty += 1}
if my_id = 11 {store.card_bouncy += 1}
if my_id = 12 {store.card_fortified += 1}
if my_id = 13 {store.card_investor += 1}
if my_id = 14 {store.card_shield_gold += 1}
if my_id = 15 {store.card_enforcedwalls +=1}
if my_id = 16 {store.card_temperedstone +=1}
if my_id = 17 {store.card_snipeshot +=1}

//Level Up Card
if my_id = 2 {if store.card_inheritance>store.card_lvl_inheritance {store.card_lvl_inheritance+=1 store.card_inheritance=1}}
if my_id = 3 {if store.card_sharpened_tip>store.card_lvl_sharpened_tip {store.card_lvl_sharpened_tip+=1 store.card_sharpened_tip=1}}
if my_id = 4 {if store.card_critical_gold>store.card_lvl_critgold {store.card_lvl_critgold+=1 store.card_critical_gold=1}}
if my_id = 5 {if store.card_critical_heart>store.card_lvl_critical_heart {store.card_lvl_critical_heart+=1 store.card_critical_heart=1}}
if my_id = 6 {if store.card_sacrifice>store.card_lvl_sacrifice {store.card_lvl_sacrifice+=1 store.card_sacrifice=1}}
if my_id = 7 {if store.card_blood_moon>store.card_lvl_blood_moon {store.card_lvl_blood_moon+=1 store.card_blood_moon=1}}
if my_id = 8 {if store.card_vampiric_wealth>store.card_lvl_vampiric_wealth {store.card_lvl_vampiric_wealth+=1 store.card_vampiric_wealth=1}}
if my_id = 9 {if store.card_charge>store.card_lvl_charge {store.card_lvl_charge+=1 store.card_charge=1}}
if my_id = 10 {if store.card_bounty>store.card_lvl_bounty {store.card_lvl_bounty+=1 store.card_bounty=1}}
if my_id = 11 {if store.card_bouncy>store.card_lvl_bouncy {store.card_lvl_bouncy+=1 store.card_bouncy=1}}
if my_id = 12 {if store.card_fortified>store.card_lvl_fortified {store.card_lvl_fortified+=1 store.card_fortified=1}}
if my_id = 13 {if store.card_investor>store.card_lvl_investor {store.card_lvl_investor+=1 store.card_investor=1}}
if my_id = 14 {if store.card_shield_gold>store.card_lvl_shield_gold {store.card_lvl_shield_gold+=1 store.card_shield_gold=1}}
if my_id = 15 {if store.card_enforcedwalls>store.card_lvl_enforcedwalls {store.card_lvl_enforcedwalls+=1 store.card_enforcedwalls=1}}
if my_id = 16 {if store.card_temperedstone>store.card_lvl_temperedstone {store.card_lvl_temperedstone+=1 store.card_temperedstone=1}}
if my_id = 17 {if store.card_snipeshot>store.card_lvl_snipeshot {store.card_lvl_snipeshot+=1 store.card_snipeshot=1}}

////Quick Challenge
//if (store.challenge_a=5 or store.challenge_b=5 or store.challenge_c=5) and store.goal_collector<1+(store.lvl_collector)
//	{
//	  store.goal_collector+=1
//	  if store.goal_collector>=1+(store.lvl_collector) {store.challenge_flag=1}
//	}

save_game()
exit
}