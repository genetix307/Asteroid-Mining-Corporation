audio_play_sound(sfx_click,1,false)
effect_btn()

freeUpgrade=0
if 1+check_luck()>random(110) {
freeUpgrade=1 
show=instance_create_depth(x-64,y-18,depth-1,show_get_item) 
show.myReward="Free Upgrade"
}

if greyed_out=0 and capped=0 {
if freeUpgrade=0 {store.gold-=myCost}

if myID=1 {store.attack_range+=nextStat store.lvl_attack_range+=1 store.cost_attack_range+=ceil(store.lvl_attack_range/3)*5}
if myID=2 {store.knockback+=nextStat store.lvl_knockback+=1 store.cost_knockback+=ceil(store.lvl_knockback/2)*5}
if myID=3 {store.attack_speed+=nextStat store.lvl_attack_speed+=1 store.cost_attack_speed+=ceil(store.lvl_attack_speed)*10}
if myID=4 {store.critical_multiplier+=nextStat store.lvl_critical_multiplier+=1 store.cost_critical_multiplier+=ceil(store.lvl_critical_multiplier/2)*5}
if myID=5 {store.attack_damage+=nextStat store.lvl_attack_damage+=1 store.cost_attack_damage+=ceil(store.lvl_attack_damage/2)*5}
if myID=6 {store.critical_chance+=nextStat store.lvl_critical_chance+=1 store.cost_critical_chance+=ceil(store.lvl_critical_chance/2)*5}

if myID=7 {store.regen+=nextStat store.lvl_regen+=1 store.cost_regen+=ceil(store.lvl_regen/2)*10}
if myID=8 {store.reflect+=nextStat store.lvl_reflect+=1 store.cost_reflect+=ceil(store.lvl_reflect/2)*20}
if myID=9 {store.defense+=nextStat store.lvl_defense+=1 store.cost_defense+=ceil(store.lvl_defense/2)*10}
if myID=10 {store.lifesteal_chance+=nextStat store.lvl_lifesteal_chance+=1 store.cost_lifesteal_chance+=ceil(store.lvl_lifesteal_chance/2)*5}
if myID=11 {store.maxhp+=nextStat store.hp+=nextStat store.lvl_max_health+=1 store.cost_max_health+=ceil(store.lvl_max_health/2)*5}
if myID=12 {store.lifesteal_amount+=nextStat store.lvl_lifesteal_amount+=1 store.cost_lifesteal_amount+=ceil(store.lvl_lifesteal_amount/2)*5}

if myID=13 {store.dailygem+=nextStat store.lvl_dailygem+=1 store.cost_dailygem+=ceil(store.lvl_dailygem/2)*30}
if myID=14 {store.interestrate+=nextStat store.lvl_interestrate+=1 store.cost_interestrate+=ceil(store.lvl_interestrate)*10}
if myID=15 {store.dailygold+=nextStat store.lvl_dailygold+=1 store.cost_dailygold+=ceil(store.lvl_dailygold)}
if myID=16 {store.maxinterest+=nextStat store.lvl_maxinterest+=1 store.cost_maxinterest+=ceil(store.lvl_maxinterest*2)}
if myID=17 {store.killgold+=nextStat store.lvl_killgold+=1 store.cost_killgold+=ceil(store.lvl_killgold/3)*25}
if myID=18 {store.luck+=nextStat store.lvl_luck+=1 store.cost_luck+=ceil(store.lvl_luck)*10}
}

