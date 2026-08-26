greyed_out=0

if myID=1 {myName = "Potion" myCostDesc="Herbs x1 Crystal Shard x1" cost_herbs=1 cost_crystalshard=1 have=store.have_potion}
if myID=2 {myName = "Mega Potion" myCostDesc="Herbs x2 Beast Blood x1" cost_herbs=2 cost_beastblood=1 have=store.have_megapotion}
if myID=3 {myName = "Focus Pill" myCostDesc="Herbs x1 Crystal Shard x2" cost_herbs=1 cost_crystalshard=2 have=store.have_focuspill}
if myID=4 {myName = "Lucky Clover" myCostDesc="Herbs x1 Element Shard x1" cost_herbs=1 cost_elementshard=1 have=store.have_luckyclover}
if myID=5 {myName = "Monster Lure" myCostDesc="Beast Blood x2 Bone Shard x1" cost_beastblood=2 cost_boneshard=1 have=store.have_monsterlure}
if myID=6 {myName = "Healing Salve" myCostDesc="Herbs x2 Oil x1" cost_herbs=2 cost_oil=1 have=store.have_healingsalve}
if myID=7 {myName = "Vampire Fang" myCostDesc="Beast Blood x2 Bone Shard x2" cost_beastblood=2 cost_boneshard=2 have=store.have_vampirefang}
if myID=8 {myName = "Chicken" myCostDesc="Beast Blood x1 Herbs x1" cost_beastblood=1 cost_herbs=1 have=store.have_chicken}
if myID=9 {myName = "Lamp Oil" myCostDesc="Oil x2 Herbs x1" cost_oil=2 cost_herbs=1 have=store.have_lampoil}
if myID=10 {myName = "Mirror" myCostDesc="Iron Shard x1 Crystal Shard x1" cost_ironshard=1 cost_crystalshard=1 have=store.have_mirror}
if myID=11 {myName = "Basic Arrow x50" myCostDesc="Iron Shard x2 Bone Shard x1" cost_ironshard=2 cost_boneshard=1 have=store.have_arrow_basic}
if myID=12 {myName = "Precision Arrow x50" myCostDesc="Iron Shard x2 Crystal Shard x1" cost_ironshard=2 cost_crystalshard=1 have=store.have_arrow_precision}
if myID=13 {myName = "Flame Arrow x50" myCostDesc="Iron Shard x2 Oil x1" cost_ironshard=2 cost_oil=1 have=store.have_arrow_flame}
if myID=14 {myName = "Frost Arrow x50" myCostDesc="Iron Shard x2 Element Shard x1" cost_ironshard=2 cost_elementshard=1 have=store.have_arrow_frost}
if myID=15 {myName = "Heavy Arrow x50" myCostDesc="Iron Shard x3" cost_ironshard=3 have=store.have_arrow_heavy}
if myID=16 {myName = "Power Arrow x50" myCostDesc="Iron Shard x2 Crystal Shard x2" cost_ironshard=2 cost_crystalshard=2 have=store.have_arrow_power}
if myID=17 {myName = "Vampiric Arrow x50" myCostDesc="Iron Shard x2 Beast Blood x1" cost_ironshard=2 cost_beastblood=1 have=store.have_arrow_vampiric}
if myID=18 {myName = "Bomb Arrow x50" myCostDesc="Iron Shard x2 Oil x2" cost_ironshard=2 cost_oil=2 have=store.have_arrow_bomb}


if store.have_crystalshard<cost_crystalshard {greyed_out=1}
if store.have_herbs<cost_herbs {greyed_out=1}
if store.have_beastblood<cost_beastblood {greyed_out=1}
if store.have_boneshard<cost_boneshard {greyed_out=1}
if store.have_oil<cost_oil {greyed_out=1}
if store.have_ironshard<cost_ironshard {greyed_out=1}
if store.have_elementshard<cost_elementshard {greyed_out=1}

if input_a() {
alarm[0]=2	
}
