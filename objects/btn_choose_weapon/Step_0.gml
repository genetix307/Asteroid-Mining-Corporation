greyed_out=1

if myID=1 {myName = "Basic" myDesc="Simple & Effective" have=store.have_arrow_basic if have>0 {greyed_out=0}}
if myID=2 {myName = "Precision" myDesc="+10% Critical Chance on Hit" have=store.have_arrow_precision if have>0 {greyed_out=0}}
if myID=3 {myName = "Flame" myDesc="50% to start a Fire" have=store.have_arrow_flame if have>0 {greyed_out=0}}
if myID=4 {myName = "Frost" myDesc="50% to Freeze Enemy" have=store.have_arrow_frost if have>0 {greyed_out=0}}
if myID=5 {myName = "Heavy" myDesc="Deals +10 Knockback" have=store.have_arrow_heavy if have>0 {greyed_out=0}}
if myID=6 {myName = "Power" myDesc="+25% of Attack Damage" have=store.have_arrow_power if have>0 {greyed_out=0}}
if myID=7 {myName = "Vampiric" myDesc="+10% to Lifesteal" have=store.have_arrow_vampiric if have>0 {greyed_out=0}}
if myID=8 {myName = "Bomb" myDesc="Explodes for 25% Area Damage" have=store.have_arrow_bomb if have>0 {greyed_out=0}}

if hud.game_paused=1 or hud.game_over=1 or hud.game_victory=1 {store.game_speed=1 instance_destroy()}

if input_a() {
alarm[0]=2	
}
