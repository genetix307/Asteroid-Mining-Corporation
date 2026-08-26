if damaged<=0 and invincible<=0 and other.reflected=0
{
tmpAttackDamage=max(1,other.attack_damage-store.defense)
store.hp-=tmpAttackDamage
store.absorbed+=store.defense
audio_play_sound(sfx_tower_hit,1,false)
instance_create_depth(other.x+random_range(-14,8),other.y-68,depth,effect_show_damage_player).myDamage =round(tmpAttackDamage)
damaged=10
store.hits+=1
hud.damaged_daily=1
//invincible=check_grace()
//repeat 3 instance_create_depth(x,y-sprite_height,depth,effect_star)
//repeat 5 instance_create_depth(x,y,depth,blood_splatter)
instance_create_depth(x,y,depth,effect_smoke_small)
with other {instance_destroy()}

//CARDS
//Sacrifice Card
if store.card_slot_1 = 6 or store.card_slot_2 = 6 or store.card_slot_3 = 6 or store.card_slot_4 = 6 or store.card_slot_5 = 6
	{
		store.gold +=store.card_lvl_sacrifice*3
	}
}

//Shield Gold Card
if store.card_slot_1 = 14 or store.card_slot_2 = 14 or store.card_slot_3 = 14 or store.card_slot_4 = 14or store.card_slot_5 = 14
	{
		hud.count_damage_shieldgold+=min(store.defense,other.attack_damage)
		if hud.count_damage_shieldgold>=100 {
			hud.count_damage_shieldgold=0
			store.gold+=store.card_lvl_shield_gold*15
		}
	}

if other.reflected=1 {other.direction=270 instance_create_depth(x,y,depth,effect_reflect)}