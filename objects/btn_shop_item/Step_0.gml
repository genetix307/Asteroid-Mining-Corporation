greyed_out=1

if myID=1 {myName = "Potion" myDesc="Restores 25 Health" have=store.have_potion cost=20}
if myID=2 {myName = "Mega Potion" myDesc="Restores 100 Health" have=store.have_megapotion cost=60}
if myID=3 {myName = "Focus Pill" myDesc="+5% Critical Chance for 3 Days" have=store.have_focuspill cost=20}
if myID=4 {myName = "Lucky Clover" myDesc="+5% Luck for 3 Days" have=store.have_luckyclover cost=20}
if myID=5 {myName = "Monster Lure" myDesc="Spawn more enemies for 3 Days" have=store.have_monsterlure cost=20}
if myID=6 {myName = "Healing Salve" myDesc="Regain HP slowly for 3 Days" have=store.have_healingsalve cost=25}
if myID=7 {myName = "Vampire Fang" myDesc="+5% Lifesteal for 3 Days" have=store.have_vampirefang cost=20}
if myID=8 {myName = "Chicken" myDesc="Gain +5 Attack Damage and Max HP" have=store.have_chicken cost=25}
if myID=9 {myName = "Lamp Oil" myDesc="Enemies worth +2 XP for 3 Days" have=store.have_lampoil cost=20}
if myID=10 {myName = "Mirror" myDesc="+5% Reflect for 3 Days" have=store.have_mirror cost=20}
if myID=11 {myName = "Basic Arrow x50" myDesc="Simple & Effective" have=store.have_arrow_basic cost=10}
if myID=12 {myName = "Precision Arrow x50" myDesc="+10% Critical Chance" have=store.have_arrow_precision cost=50}
if myID=13 {myName = "Flame Arrow x50" myDesc="50% Chance to start a Fire" have=store.have_arrow_flame cost=50}
if myID=14 {myName = "Frost Arrow x50" myDesc="50% Chance to Freeze Enemy" have=store.have_arrow_frost cost=50}
if myID=15 {myName = "Heavy Arrow x50" myDesc="+10 Knockback on Hit" have=store.have_arrow_heavy cost=50}
if myID=16 {myName = "Power Arrow x50" myDesc="Deals +25% Attack Damage" have=store.have_arrow_power cost=50}
if myID=17 {myName = "Vampiric Arrow x50" myDesc="+10% to Lifesteal" have=store.have_arrow_vampiric cost=50}
if myID=18 {myName = "Bomb Arrow x50" myDesc="Explodes on Hit 25% Area Damage" have=store.have_arrow_bomb cost=50}

if store.gems>=cost {greyed_out=0}


if input_a() 
{
alarm[0]=2	
}
