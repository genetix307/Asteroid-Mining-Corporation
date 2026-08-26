attack_damage=store.attack_damage
base_damage=attack_damage
attack_effect=""
knockback=store.knockback
critical_chance=store.critical_chance
base_crit=critical_chance
pierce=0
move_speed=5
ttl=300
type="Basic"
ability=""
bounce=0
distance_traveled=0
image_alpha=0
alarm[0]=3

direction=tower.focus_direction
//audio_play_sound(sfx_fire_cannon,1,false) 

//Perk Limit Break
if store.perk_lvl_limitbreak>0 {hud.limitbreak_count+=1 if hud.limitbreak_count>=5 {hud.limitbreak_count=0 attack_damage+=store.perk_lvl_limitbreak*10}}

//Card - Last Strike
if store.card[7]>=1 and store.hp<=(store.maxhp/10) {attack_damage+=store.card[7]}

//Power Arrow
if hud.current_arrow="Power Arrow" {attack_damage+=round(store.attack_damage*.25)}

//Spend Active Arrow
if hud.current_arrow="Basic Arrow" {store.have_arrow_basic-=1}
if hud.current_arrow="Flame Arrow" {store.have_arrow_flame-=1}
if hud.current_arrow="Frost Arrow" {store.have_arrow_frost-=1}
if hud.current_arrow="Heavy Arrow" {store.have_arrow_heavy-=1}
if hud.current_arrow="Power Arrow" {store.have_arrow_power-=1}
if hud.current_arrow="Precision Arrow" {store.have_arrow_precision-=1}
if hud.current_arrow="Vampiric Arrow" {store.have_arrow_vampiric-=1}
if hud.current_arrow="Bomb Arrow" {store.have_arrow_bomb-=1}

//Bouncy Arrow Card
if store.card_slot_1 = 11 or store.card_slot_2 = 11 or store.card_slot_3 = 11 or store.card_slot_4 = 11 or store.card_slot_5 = 11
	{
		bounce=store.card_lvl_bouncy
	}
	