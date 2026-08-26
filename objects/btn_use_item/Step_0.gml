greyed_out=1

if myID=1 {myName = "Potion" myDesc="Restores 25 Health" have=store.have_potion if have>0 {greyed_out=0}}
if myID=2 {myName = "Mega Potion" myDesc="Restores 100 Health" have=store.have_megapotion if have>0 {greyed_out=0}}
if myID=3 {myName = "Focus Pill" myDesc="+5% Critical Chance for 3 Days" have=store.have_focuspill if have>0 {greyed_out=0}}
if myID=4 {myName = "Lucky Clover" myDesc="+5% Luck for 3 Days" have=store.have_luckyclover if have>0 {greyed_out=0}}
if myID=5 {myName = "Monster Lure" myDesc="Spawn more enemies for 3 Days" have=store.have_monsterlure if have>0 {greyed_out=0}}
if myID=6 {myName = "Healing Salve" myDesc="Regain HP slowly for 3 Days" have=store.have_healingsalve if have>0 {greyed_out=0}}
if myID=7 {myName = "Vampire Fang" myDesc="+5% Lifesteal for 3 Days" have=store.have_vampirefang if have>0 {greyed_out=0}}
if myID=8 {myName = "Chicken" myDesc="+5 Attack Damage +5 Max HP" have=store.have_chicken if have>0 {greyed_out=0}}
if myID=9 {myName = "Lamp Oil" myDesc="Enemies drop +2 XP for 3 Days" have=store.have_lampoil if have>0 {greyed_out=0}}
if myID=10 {myName = "Mirror" myDesc="+5% Reflect for 3 Days" have=store.have_mirror if have>0 {greyed_out=0}}

if hud.game_paused=1 or hud.game_over=1 or hud.game_victory=1 {store.game_speed=1 instance_destroy()}

if input_a() {
alarm[0]=2	
}
