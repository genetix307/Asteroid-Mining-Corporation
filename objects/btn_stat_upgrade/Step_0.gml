if myID=1 {myName = "Attack Range" myStat=calc_number(store.attack_range) postStat="ft" myCost=store.cost_attack_range nextStat=15 myCap=1000 mylvl=store.lvl_attack_range}
if myID=2 {myName = "Knockback" myStat=calc_number(store.knockback) postStat="ft" myCost=store.cost_knockback nextStat=3 myCap=70 mylvl=store.lvl_knockback}
if myID=3 {myName = "Attack Speed" myStat=store.attack_speed postStat="" myCost=store.cost_attack_speed nextStat=.07 myCap=50 mylvl=store.lvl_attack_speed}
if myID=4 {myName = "Critical Multiplier" preStat="x" myStat=calc_number(check_critical_multiplier()) myCost=store.cost_critical_multiplier nextStat=.25 myCap=999999999 mylvl=store.lvl_critical_multiplier}
if myID=5 {myName = "Attack Damage" myStat=store.attack_damage myCost=store.cost_attack_damage nextStat=2 myCap=9999999999 mylvl=store.lvl_attack_damage}
if myID=6 {myName = "Critical Chance" myStat=calc_number(check_critical_chance()) postStat="%" myCost=store.cost_critical_chance nextStat=1 myCap=20 mylvl=store.lvl_critical_chance}

if myID=7 {myName = "Daily Regen" myStat=calc_number(store.regen) postStat="" myCost=store.cost_regen nextStat=1 myCap=99999 mylvl=store.lvl_regen}
if myID=8 {myName = "Reflect"  myStat=calc_number(check_reflect()) postStat="%" myCost=store.cost_reflect nextStat=1 myCap=15 mylvl=store.lvl_reflect}
if myID=9 {myName = "Defense" myStat=calc_number(check_defense()) postStat="" myCost=store.cost_defense nextStat=.25 myCap=9999999 mylvl=store.lvl_defense}
if myID=10 {myName = "Lifesteal Chance" myStat=calc_number(check_lifesteal()) postStat="%" myCost=store.cost_lifesteal_chance nextStat=1 myCap=20 mylvl=store.lvl_lifesteal_chance}
if myID=11 {myName = "Max Health" myStat=calc_number(store.maxhp) myCost=store.cost_max_health nextStat=2 myCap=99999999999999 mylvl=store.lvl_max_health}
if myID=12 {myName = "Lifesteal Amount" myStat=store.lifesteal_amount myCost=store.cost_lifesteal_amount nextStat=1 myCap=99999999999999999 mylvl=store.lvl_lifesteal_amount}

if myID=13 {myName = "Daily Gem Bonus" myStat=calc_number(store.dailygem) postStat="" myCost=store.cost_dailygem nextStat=1 myCap=100 mylvl=store.lvl_dailygem}
if myID=14 {myName = "Interest Rate"  myStat=calc_number(store.interestrate) postStat="%" myCost=store.cost_interestrate nextStat=1 myCap=10 mylvl=store.lvl_interestrate}
if myID=15 {myName = "Daily Gold Bonus" myStat=calc_number(store.dailygold) postStat="" myCost=store.cost_dailygold nextStat=5 myCap=9999999999 mylvl=store.lvl_dailygold}
if myID=16 {myName = "Max Interest"  myStat=calc_number(store.maxinterest) postStat="" myCost=store.cost_maxinterest nextStat=25 myCap=9999 mylvl=store.lvl_maxinterest}
if myID=17 {myName = "Kill Gold Bonus" myStat=store.killgold myCost=store.cost_killgold nextStat=1 myCap=999999999999 mylvl=store.lvl_killgold}
if myID=18 {myName = "Luck" myStat=calc_number(check_luck()) postStat="%" myCost=store.cost_luck nextStat=1 myCap=15 mylvl=store.lvl_luck}

if myCost>store.gold {greyed_out=1} else {greyed_out=0}
if myStat>=myCap {capped=1}

//Locked
if mylvl<=0 {myName="???????" greyed_out=1}

if hud.game_paused=1 or hud.game_over=1 or hud.game_victory=1 {store.game_speed=1 instance_destroy()}

showNextStat=real(nextStat)+real(myStat)

if input_a() {
alarm[0]=2	
}

