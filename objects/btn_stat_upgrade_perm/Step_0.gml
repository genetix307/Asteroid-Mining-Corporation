if myID=1 {myName = "Attack Range" myStat=calc_number(store.perm_attack_range) postStat="ft" myCost=store.cost_perm_attack_range nextStat=10 myCap=750 mylvl=store.lvl_perm_attack_range}
if myID=2 {myName = "Knockback" myStat=calc_number(store.perm_knockback) postStat="ft" myCost=store.cost_perm_knockback nextStat=1 myCap=30 mylvl=store.lvl_perm_knockback}
if myID=3 {myName = "Attack Speed" myStat=store.perm_attack_speed postStat="" myCost=store.cost_perm_attack_speed nextStat=.03 myCap=30 mylvl=store.lvl_perm_attack_speed}
if myID=4 {myName = "Critical Multiplier" preStat="x" myStat=calc_number(store.perm_critical_multiplier) myCost=store.cost_perm_critical_multiplier nextStat=.10 myCap=999999999 mylvl=store.lvl_perm_critical_multiplier}
if myID=5 {myName = "Attack Damage" myStat=store.perm_attack_damage myCost=store.cost_perm_attack_damage nextStat=1 myCap=9999999999 mylvl=store.lvl_perm_attack_damage}
if myID=6 {myName = "Critical Chance" myStat=calc_number(store.perm_critical_chance) postStat="%" myCost=store.cost_perm_critical_chance nextStat=.25 myCap=15 mylvl=store.lvl_perm_critical_chance}

if myID=7 {myName = "Daily Regen" myStat=calc_number(store.perm_regen) postStat="" myCost=store.cost_perm_regen nextStat=1 myCap=99999 mylvl=store.lvl_perm_regen}
if myID=8 {myName = "Reflect"  myStat=calc_number(store.perm_reflect) postStat="%" myCost=store.cost_perm_reflect nextStat=.25 myCap=10 mylvl=store.lvl_perm_reflect}
if myID=9 {myName = "Defense" myStat=calc_number(store.perm_defense) postStat="" myCost=store.cost_perm_defense nextStat=.25 myCap=999999 mylvl=store.lvl_perm_defense}
if myID=10 {myName = "Lifesteal Chance" myStat=calc_number(store.perm_lifesteal_chance) postStat="%" myCost=store.cost_perm_lifesteal_chance nextStat=.25 myCap=15 mylvl=store.lvl_perm_lifesteal_chance}
if myID=11 {myName = "Max Health" myStat=calc_number(store.perm_maxhp) myCost=store.cost_perm_max_health nextStat=1 myCap=99999999999999 mylvl=store.lvl_perm_max_health}
if myID=12 {myName = "Lifesteal Amount" myStat=store.perm_lifesteal_amount myCost=store.cost_perm_lifesteal_amount nextStat=1 myCap=99999999999999999 mylvl=store.lvl_perm_lifesteal_amount}

if myID=13 {myName = "Daily Gem Bonus" myStat=calc_number(store.perm_dailygem) postStat="" myCost=store.cost_perm_dailygem nextStat=1 myCap=100 mylvl=store.lvl_perm_dailygem}
if myID=14 {myName = "Interest Rate" myStat=calc_number(store.perm_interestrate) postStat="%" myCost=store.cost_perm_interestrate nextStat=.10 myCap=3 mylvl=store.lvl_perm_interestrate}
if myID=15 {myName = "Daily Gold Bonus" myStat=calc_number(store.perm_dailygold) postStat="" myCost=store.cost_perm_dailygold nextStat=3 myCap=9999999999 mylvl=store.lvl_perm_dailygold}
if myID=16 {myName = "Max Interest"  myStat=calc_number(store.perm_maxinterest) postStat="" myCost=store.cost_perm_maxinterest nextStat=10 myCap=99999 mylvl=store.lvl_perm_maxinterest}
if myID=17 {myName = "Kill Gold Bonus" myStat=store.perm_killgold myCost=store.cost_perm_killgold nextStat=1 myCap=999999999999 mylvl=store.lvl_perm_killgold}
if myID=18 {myName = "Luck" myStat=calc_number(store.perm_luck) postStat="%" myCost=store.cost_perm_luck nextStat=.25 myCap=10 mylvl=store.lvl_perm_luck}

//Locked
if mylvl=0 {myName="??????" myCost=25}

if myCost>store.gems {greyed_out=1} else {greyed_out=0}
if myStat>=myCap {capped=1}

showNextStat=real(nextStat)+real(myStat)

if input_a() {
alarm[0]=2	
}