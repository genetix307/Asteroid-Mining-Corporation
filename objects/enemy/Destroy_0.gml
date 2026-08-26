if hp<=0
{
instance_create_depth(other.x,other.y-12,depth-10,blood_splatter)
repeat 3 instance_create_depth(other.x,other.y-8,depth-10,gore)
if store.code_blood=1 
{
repeat 3 instance_create_depth(random_range(x-4,x+4),random_range(y-4,y+4),depth-10,blood_splatter)
repeat 5 instance_create_depth(random_range(x-8,x+8),random_range(y-8,y+8),depth-10,gore)	
}
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(x,y,depth,coin)
instance_create_depth(x+random_range(-32,32),y+random_range(-32,32),depth,xp_orb)
//if 5+check_luck()>random(200) {spawn_item()}
store.enemies_slain +=1
store.enemies_killed_run+=1

if boss=1 { 
store.bosses_slain+=1
//store.bosses_killed_run+=1
repeat 8 instance_create_depth(x+random_range(-24,24),y+random_range(-24,24),depth-5,show_big_hit)
set_music()
//repeat store.current_floor {instance_create_depth(x,y,depth,item_gem)}
}

if boss=0 {audio_play_sound(sfx_enemy_die,1,false,,,.6+random(.4))}
if boss=1 {audio_play_sound(sfx_boss_destroy,1,false)}

//Quick Challenge
//if (store.challenge_a=0 or store.challenge_b=0 or store.challenge_c=0) and store.goal_bossslayer<2+(1*store.lvl_bossslayer)
//	{
//	  store.goal_bossslayer+=1
//	  if store.goal_bossslayer>=2+(1*store.lvl_bossslayer) {store.challenge_flag=1}
//	}
//}

//if on_death="acid" {wpn=instance_create_depth(x,y-24,depth,enemy_weapon_acid) wpn.direction=point_direction(x,y,player.x,player.y) wpn.attack_damage=attack_damage}
//if on_death="explode" {instance_create_depth(x,y,depth,enemy_weapon_explosion)}
if boss=1 repeat 10 instance_create_depth(x+random_range(-44,44),y+random_range(-44,44),depth-10,effect_smoke_small)

//Card - Plunderer
if store.card[4]>=1 and 2>random(100) {tmpGems=store.card[4] store.gems+=tmpGems store.gems_earned+=tmpGems store.gems_earned_run+=tmpGems}

//Ninja trait
//if store.character="Ninja" {player.super_critical=180}

store.xp+=xp_drop+store.perk_lvl_wisdom
if store.status_lampoil>0 {store.xp+=2}

//CARDS
//Charge Card
if store.card_slot_1 = 9 or store.card_slot_2 = 9 or store.card_slot_3 = 9 or store.card_slot_4 = 9 or store.card_slot_5 = 9
	{
		hud.count_kills_charge+=1
		if hud.count_kills_charge>=20+(5*store.card_lvl_charge) {
			hud.count_kills_charge=0
			store.attack_damage+=store.card_lvl_charge
		}
	}
//Bounty Card
if store.card_slot_1 = 10 or store.card_slot_2 = 10 or store.card_slot_3 = 10 or store.card_slot_4 = 10 or store.card_slot_5 = 10
	{
		hud.count_kills_bounty+=1
		if hud.count_kills_bounty>=20+(5*store.card_lvl_bounty) {
			hud.count_kills_bounty=0
			store.gems+=store.card_lvl_bounty*2
			store.gems_earned+=store.card_lvl_bounty*2
		}
	}
//Enforce Wall Card
if store.card_slot_1 = 15 or store.card_slot_2 = 15 or store.card_slot_3 = 15 or store.card_slot_4 = 15 or store.card_slot_5 = 15
	{
		hud.count_kills_enforcedwalls+=1
		if hud.count_kills_enforcedwalls>=20+(5*store.card_lvl_enforcedwalls)  {
			hud.count_kills_enforcedwalls=0
			store.defense+=store.card_lvl_enforcedwalls*.50
		}
	}

//if store.wisdompotion>0 {store.xp+=1}

//Wisdom
//if store.perk_lvl_wisdom>0 {store.xp+=store.perk_lvl_wisdom}
check_lvl_up()

//Bestiary
//if type="Bone Archer" {store.slain_bonearcher+=1}

//Supply Crate
if check_luck()+1>=random(120+hud.crate_count) {instance_create_depth(x,y,depth,supply_crate)}

//Slime Split
if type="Slime" 
{
repeat 2 {makeEnemy=instance_create_depth(random_range(x-80,x+80),other.y-random(80),depth,enemy) makeEnemy.type="Baby Slime"}
}

//Drop Item
if store.luck+2>random(100) 
{
if item="Crystal Shard" {instance_create_depth(x,y,depth,item_crystalshard)}
if item="Herbs" {instance_create_depth(x,y,depth,item_herbs)}
if item="Beast Blood" {instance_create_depth(x,y,depth,item_beastblood)}
if item="Bone Shard" {instance_create_depth(x,y,depth,item_boneshard)}
if item="Oil" {instance_create_depth(x,y,depth,item_oil)}
if item="Iron Shard" {instance_create_depth(x,y,depth,item_ironshard)}
if item="Element Shard" {instance_create_depth(x,y,depth,item_elementshard)}
} else if store.luck+2>random(200) //Drop Rare Item
{
if item="Crystal Shard" {instance_create_depth(x,y,depth,item_crystalshard)}
if item="Herbs" {instance_create_depth(x,y,depth,item_herbs)}
if item="Beast Blood" {instance_create_depth(x,y,depth,item_beastblood)}
if item="Bone Shard" {instance_create_depth(x,y,depth,item_boneshard)}
if item="Oil" {instance_create_depth(x,y,depth,item_oil)}
if item="Iron Shard" {instance_create_depth(x,y,depth,item_ironshard)}
if item="Element Shard" {instance_create_depth(x,y,depth,item_elementshard)}
}

//Effect Enemy Die
var fx = instance_create_depth(x, y, depth, effect_enemy_die);
// copy sprite info
fx.img        = sprite_index;
fx.img_index  = image_index;
fx.img_xscale = image_xscale;
fx.img_yscale = image_yscale;
fx.img_angle  = image_angle;

}