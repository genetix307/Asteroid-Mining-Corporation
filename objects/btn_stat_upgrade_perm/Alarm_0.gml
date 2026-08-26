audio_play_sound(sfx_click,1,false)
effect_btn()

freeUpgrade=0
if 1+check_luck()>random(1000) {
freeUpgrade=1 
show=instance_create_depth(x-64,y-18,depth-1,show_get_item) 
show.myReward="Free Upgrade"
}

if greyed_out=0 and capped=0 {
if freeUpgrade=0 {store.gems-=myCost}

if myID=1 {store.perm_attack_range+=nextStat store.lvl_perm_attack_range+=1 store.cost_perm_attack_range+=ceil(store.lvl_perm_attack_range)*10}
if myID=2 {store.perm_knockback+=nextStat store.lvl_perm_knockback+=1 store.cost_perm_knockback+=ceil(store.lvl_perm_knockback)*10}
if myID=3 {store.perm_attack_speed+=nextStat store.lvl_perm_attack_speed+=1 store.cost_perm_attack_speed+=ceil(store.lvl_perm_attack_speed)*30}
if myID=4 {store.perm_critical_multiplier+=nextStat store.lvl_perm_critical_multiplier+=1 store.cost_perm_critical_multiplier+=ceil(store.lvl_perm_critical_multiplier)*10}
if myID=5 {store.perm_attack_damage+=nextStat store.lvl_perm_attack_damage+=1 store.cost_perm_attack_damage+=ceil(store.lvl_perm_attack_damage)*15}
if myID=6 {store.perm_critical_chance+=nextStat store.lvl_perm_critical_chance+=1 store.cost_perm_critical_chance+=ceil(store.lvl_perm_critical_chance)*15}

if myID=7 {store.perm_regen+=nextStat store.lvl_perm_regen+=1 store.cost_perm_regen+=ceil(store.lvl_perm_regen)*10}
if myID=8 {store.perm_reflect+=nextStat store.lvl_perm_reflect+=1 store.cost_perm_reflect+=ceil(store.lvl_perm_reflect)*20}
if myID=9 {store.perm_defense+=nextStat store.lvl_perm_defense+=1 store.cost_perm_defense+=ceil(store.lvl_perm_defense)*15}
if myID=10 {store.perm_lifesteal_chance+=nextStat store.lvl_perm_lifesteal_chance+=1 store.cost_perm_lifesteal_chance+=ceil(store.lvl_perm_lifesteal_chance)*15}
if myID=11 {store.perm_maxhp+=nextStat store.lvl_perm_max_health+=1 store.cost_perm_max_health+=ceil(store.lvl_perm_max_health)*5}
if myID=12 {store.perm_lifesteal_amount+=nextStat store.lvl_perm_lifesteal_amount+=1 store.cost_perm_lifesteal_amount+=ceil(store.lvl_perm_lifesteal_amount)*20}

if myID=13 {store.perm_dailygem+=nextStat store.lvl_perm_dailygem+=1 store.cost_perm_dailygem+=ceil(store.lvl_perm_dailygem)*25}
if myID=14 {store.perm_interestrate+=nextStat store.lvl_perm_interestrate+=1 store.cost_perm_interestrate+=ceil(store.lvl_perm_interestrate)*20}
if myID=15 {store.perm_dailygold+=nextStat store.lvl_perm_dailygold+=1 store.cost_perm_dailygold+=ceil(store.lvl_perm_dailygold)}
if myID=16 {store.perm_maxinterest+=nextStat store.lvl_perm_maxinterest+=1 store.cost_perm_maxinterest+=ceil(store.lvl_perm_maxinterest*5)}
if myID=17 {store.perm_killgold+=nextStat store.lvl_perm_killgold+=1 store.cost_perm_killgold+=ceil(store.lvl_perm_killgold)*25}
if myID=18 {store.perm_luck+=nextStat store.lvl_perm_luck+=1 store.cost_perm_luck+=ceil(store.lvl_perm_luck)*25}
}

save_game()