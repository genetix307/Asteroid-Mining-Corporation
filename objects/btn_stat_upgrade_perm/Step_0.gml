// MINING
if myID=1 {myName="Mining Time" myStat=store.mine_time myCost=store.cost_mine_time nextStat=1 myCap=60 mylvl=store.lvl_mine_time myDesc = "Time available each Mining Run"}
if myID=2 {myName="Mining Speed" myStat=store.mine_speed myCost=store.cost_mine_speed nextStat=.1 myCap=7 mylvl=store.lvl_mine_speed myDesc = "Mining Attack Speed"}
if myID=3 {myName="Laser Move Speed" myStat=store.mine_move_speed myCost=store.cost_mine_move_speed nextStat=.25 myCap=14 mylvl=store.lvl_mine_move_speed myDesc = "Speed Lasers Travel"}
if myID=4 {myName="Mining Damage" myStat=store.mine_damage myCost=store.cost_mine_damage nextStat=1 myCap=9999 mylvl=store.lvl_mine_damage myDesc = "Base damage dealt when mining"}
if myID=5 {myName="Critical Chance" myStat=calc_number(store.mine_critical_chance) postStat="%" myCost=store.cost_mine_critical_chance nextStat=.50 myCap=30 mylvl=store.lvl_mine_critical_chance myDesc = "Chance to deal Critical Damage"}
if myID=6 {myName="Critical Multiplier" preStat="x" myStat=store.mine_critical_multiplier myCost=store.cost_mine_critical_multiplier nextStat=.10 myCap=999999999 mylvl=store.lvl_mine_critical_multiplier myDesc = "Critical Damage Multiplier"}
if myID=7 {myName="Multishot Chance" myStat=calc_number(store.mine_multishot_chance) postStat="%" myCost=store.cost_mine_multishot_chance nextStat=.50 myCap=30 mylvl=store.lvl_mine_multishot_chance myDesc = "Chance to shoot multiple lasers"}
if myID=8 {myName="Asteroid Spawn" myStat=store.mine_asteroid_spawn myCost=store.cost_mine_asteroid_spawn nextStat=1 myCap=200 mylvl=store.lvl_mine_asteroid_spawn myDesc = "Number of Asteroids spawned"}
if myID=9 {myName="Asteroid Size" myStat=store.mine_asteroid_size myCost=store.cost_mine_asteroid_size nextStat=.05 myCap=2.5 mylvl=store.lvl_mine_asteroid_size myDesc = "Size of Asteroids"}
if myID=10 {myName="Asteroid Density" myStat=store.mine_asteroid_density myCost=store.cost_mine_asteroid_density nextStat=1 myCap=9999 mylvl=store.lvl_mine_asteroid_density myDesc = "Value and Strength of Asteroids"}
if myID=11 {myName="Gold Chance" myStat=calc_number(store.mine_asteroid_gold_chance) postStat="%" myCost=store.cost_mine_asteroid_gold_chance nextStat=.25 myCap=30 mylvl=store.lvl_mine_asteroid_gold_chance myDesc = "Chance to spawn Gold worth x5"}
if myID=12 {myName="Time Extend Chance" myStat=calc_number(store.mine_asteroid_time_extend_chance) postStat="%" myCost=store.cost_mine_asteroid_time_extend_chance nextStat=.50 myCap=30 mylvl=store.lvl_mine_asteroid_time_extend_chance myDesc = "Chance Asteroid gives +2 seconds"}
if myID=13 {myName="Diamond Chance" myStat=calc_number(store.mine_asteroid_diamond_chance) postStat="%" myCost=store.cost_mine_asteroid_diamond_chance nextStat=.25 myCap=30 mylvl=store.lvl_mine_asteroid_diamond_chance myDesc = "Chance to spawn Diamond worth x10"}
if myID=14 {myName="Spawn Chance" myStat=calc_number(store.mine_spawn_chance) postStat="%" myCost=store.cost_mine_spawn_chance nextStat=.50 myCap=30 mylvl=store.lvl_mine_spawn_chance myDesc = "Chance to Spawn new Asteroid"}

// Locked
if mylvl=0 {myName="??????" myCost=25 greyed_out=1 locked=1}
//if myID=13 and store.tier_best_1<30 {locked=1 myName="??????" myDesc="Reach Tier 2 to Unlock!"}
//if myID=14 and store.tier_best_1<20 {locked=1 myName="??????" myDesc="Reach Wave 20 on Tier 1 to Unlock!"}

if mylvl>5 {myCost+=mylvl*10}
if mylvl>10 {myCost+=mylvl*25}
if mylvl>15 {myCost+=mylvl*40}
if mylvl>20 {myCost+=mylvl*50}
if mylvl>25 {myCost+=mylvl*50}
if mylvl>30 {myCost+=mylvl*50}
if mylvl>35 {myCost+=mylvl*75}
if mylvl>40 {myCost+=mylvl*100}

if myCost>store.gems or locked>0 {greyed_out=1} else {greyed_out=0}
if myStat>=myCap {capped=1}

showNextStat=real(nextStat)+real(myStat)

if input_a() {
alarm[0]=2	
}