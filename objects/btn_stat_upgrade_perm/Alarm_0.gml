audio_play_sound(sfx_click,1,false)
effect_btn()

if greyed_out=0 and capped=0 and locked=0 {
store.gems-=myCost

// MINING
if myID=1 {store.mine_time+=nextStat store.lvl_mine_time+=1 store.cost_mine_time+=ceil(store.lvl_mine_time/3)*25}
if myID=2 {store.mine_speed+=nextStat store.lvl_mine_speed+=1 store.cost_mine_speed+=ceil(store.lvl_mine_speed/3)*15}
if myID=3 {store.mine_move_speed+=nextStat store.lvl_mine_move_speed+=1 store.cost_mine_move_speed+=ceil(store.lvl_mine_move_speed/3)*15}
if myID=4 {store.mine_damage+=nextStat store.lvl_mine_damage+=1 store.cost_mine_damage+=ceil(store.lvl_mine_damage/2)*10}
if myID=5 {store.mine_critical_chance+=nextStat store.lvl_mine_critical_chance+=1 store.cost_mine_critical_chance+=ceil(store.lvl_mine_critical_chance/3)*15}
if myID=6 {store.mine_critical_multiplier+=nextStat store.lvl_mine_critical_multiplier+=1 store.cost_mine_critical_multiplier+=ceil(store.lvl_mine_critical_multiplier/2)*15}
if myID=7 {store.mine_multishot_chance+=nextStat store.lvl_mine_multishot_chance+=1 store.cost_mine_multishot_chance+=ceil(store.lvl_mine_multishot_chance/2)*20}
if myID=8 {store.mine_asteroid_spawn+=nextStat store.lvl_mine_asteroid_spawn+=1 store.cost_mine_asteroid_spawn+=ceil(store.lvl_mine_asteroid_spawn/3)*15}
if myID=9 {store.mine_asteroid_size+=nextStat store.lvl_mine_asteroid_size+=1 store.cost_mine_asteroid_size+=ceil(store.lvl_mine_asteroid_size/2)*15}
if myID=10 {store.mine_asteroid_density+=nextStat store.lvl_mine_asteroid_density+=1 store.cost_mine_asteroid_density+=ceil(store.lvl_mine_asteroid_density/2)*20}
if myID=11 {store.mine_asteroid_gold_chance+=nextStat store.lvl_mine_asteroid_gold_chance+=1 store.cost_mine_asteroid_gold_chance+=ceil(store.lvl_mine_asteroid_gold_chance/2)*20}
if myID=12 {store.mine_asteroid_time_extend_chance+=nextStat store.lvl_mine_asteroid_time_extend_chance+=1 store.cost_mine_asteroid_time_extend_chance+=ceil(store.lvl_mine_asteroid_time_extend_chance/2)*25}
if myID=13 {store.mine_asteroid_diamond_chance+=nextStat store.lvl_mine_asteroid_diamond_chance+=1 store.cost_mine_asteroid_diamond_chance+=ceil(store.lvl_mine_asteroid_diamond_chance/2)*50}
if myID=14 {store.mine_spawn_chance+=nextStat store.lvl_mine_spawn_chance+=1 store.cost_mine_spawn_chance+=ceil(store.lvl_mine_spawn_chance/2)*50}
}

save_game()
