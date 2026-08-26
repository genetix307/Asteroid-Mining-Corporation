alarm[0]=20

var dir = random_range(0, 359);
var distance = random_range(600, 900);

if hud.game_paused=0 and hud.game_victory!=1 and instance_number(btn_specialevents)<=0 {
if (35-store.current_stage)>random(100) and store.current_stage>=0 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Bone Henchman" spawn-=1}
if (5+store.current_stage)>random(100) and store.current_stage>=2 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Armored Skeleton" spawn-=1}
if 6>random(100) and store.current_stage>=3 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Slime" spawn-=1}
if 4>random(100) and store.current_stage>=9 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Stinger" spawn-=1}
if 5>random(100) and store.current_stage>=3 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Bone Archer" spawn-=1}
if 6>random(100) and store.current_stage>=2 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Goblin" spawn-=1}
if 5>random(100) and store.current_stage>=4 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Mushkin" spawn-=1}
if 4>random(100) and store.current_stage>=6 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Ghoul" spawn-=1}
if 4>random(100) and store.current_stage>=12 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Carbuncle" spawn-=1}
if 4>random(100) and store.current_stage>=8 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Red Ghoul" spawn-=1}
if .25>random(100) and store.current_stage>=2 and spawn>7 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Stinger" spawn-=1}
if .25>random(100) and store.current_stage>=2 and spawn>7 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}

//Specific Stage
if 20>random(100) and store.current_stage=12 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Goblin" spawn-=1}
if 20>random(100) and store.current_stage=9 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Slime" spawn-=1}
if store.current_stage=14 and spawn>0 and spawn<3 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}

//Specific Area
if 4>random(100) and spawn>12 and room=rm_winter_hills {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Ice Slime" spawn-=1}
if 3>random(100) and spawn>13 and room=rm_desolate_desert {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Sand Lich" spawn-=1}
if 3>random(100) and spawn>12 and room=rm_dark_woods {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Dark Lich" spawn-=1}

if store.tier>1 {
if 3>random(100) and store.current_stage>=1 and spawn>10 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boneheads" spawn-=1}
if 3>random(100) and store.current_stage>=1 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Mushkin" spawn-=1}
if 8>random(100) and store.current_stage=4 and spawn>5 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Mushkin" spawn-=1}
if 3>random(100) and store.current_stage>=4 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Stinger" spawn-=1}
if 3>random(100) and store.current_stage>=11 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Crawler" spawn-=1}
if 2>random(100) and store.current_stage>=8 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}
}
if store.tier>2 {
if 3>random(100) and store.current_stage>=6 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Bone Archer" spawn-=1}
if 3>random(100) and store.current_stage>=6 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Red Ghoul" spawn-=1}
if 1>random(100) and store.current_stage>=8 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Crawler" spawn-=1}
if 2>random(100) and store.current_stage>=7 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}
}
if store.tier>3 {
if 1>random(100) and store.current_stage>=7 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Crawler" spawn-=1}
if 2>random(100) and store.current_stage>=4 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Roblow" spawn-=1}
if 2>random(100) and store.current_stage>=6 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}
}
if store.tier>4 {
if 1>random(100) and store.current_stage>=6 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Crawler" spawn-=1}
if 2>random(100) and store.current_stage>=2 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Stinger" spawn-=1}
if 2>random(100) and store.current_stage>=5 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}
}
if store.tier>5 {
if 1>random(100) and store.current_stage>=4 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Crawler" spawn-=1}
if 1>random(100) and store.current_stage>=3 and spawn>0 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Golem" spawn-=1}
}

if spawn_boss>0 and spawn<10 {
if store.current_stage=5 or store.current_stage=15 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Hamelot" spawn_boss=0}
if store.current_stage=10 or store.current_stage=20 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Slime Queen" spawn_boss=0}
if store.current_stage=25 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Dark Rider" spawn_boss=0}

if store.current_stage>30 and (store.current_stage%5==0) {
random_boss=choose(1,2,3)
if random_boss=1 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Hamelot" spawn_boss=0}
if random_boss=2 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Slime Queen" spawn_boss=0}
if random_boss=3 {instance_create_depth(x + lengthdir_x(distance, dir), y + lengthdir_y(distance, dir),depth,enemy).type="Boss Dark Rider" spawn_boss=0}
}
}

}

if spawn<= 0 and instance_number(def_enemy)<=0 and hud.game_paused=0 and hud.game_victory!=1 and hud.game_over=0 {
store.current_stage+=1 
store.world_day+=1
store.enemy_base_level+=1

//Check best tier stage reached
//if store.tier=1 {if store.current_stage>store.tier_best_1 {store.tier_best_1=store.current_stage}}
//if store.tier=2 {if store.current_stage>store.tier_best_2 {store.tier_best_2=store.current_stage}}
//if store.tier=3 {if store.current_stage>store.tier_best_3 {store.tier_best_3=store.current_stage}}
//if store.tier=4 {if store.current_stage>store.tier_best_4 {store.tier_best_4=store.current_stage}}
//if store.tier=5 {if store.current_stage>store.tier_best_5 {store.tier_best_5=store.current_stage}}
//if store.tier=6 {if store.current_stage>store.tier_best_6 {store.tier_best_6=store.current_stage}}
if store.current_area="Estarian Woods" 
{
if store.tier=1 and store.current_stage>store.tier1_estarianwoods_best {store.tier1_estarianwoods_best=store.current_stage}
if store.tier=2 and store.current_stage>store.tier2_estarianwoods_best {store.tier2_estarianwoods_best=store.current_stage}
if store.tier=3 and store.current_stage>store.tier3_estarianwoods_best {store.tier3_estarianwoods_best=store.current_stage}
}

if store.current_area="Winter Hills" 
{
if store.tier=1 and store.current_stage>store.tier1_winterhills_best {store.tier1_winterhills_best=store.current_stage}
if store.tier=2 and store.current_stage>store.tier2_winterhills_best {store.tier2_winterhills_best=store.current_stage}
if store.tier=3 and store.current_stage>store.tier3_winterhills_best {store.tier3_winterhills_best=store.current_stage}
}

if store.current_area="Desolate Desert" 
{
if store.tier=1 and store.current_stage>store.tier1_desolatedesert_best {store.tier1_desolatedesert_best=store.current_stage}
if store.tier=2 and store.current_stage>store.tier2_desolatedesert_best {store.tier2_desolatedesert_best=store.current_stage}
if store.tier=3 and store.current_stage>store.tier3_desolatedesert_best {store.tier3_desolatedesert_best=store.current_stage}
}

if store.current_area="Dark Woods" 
{
if store.tier=1 and store.current_stage>store.tier1_darkwoods_best {store.tier1_darkwoods_best=store.current_stage}
if store.tier=2 and store.current_stage>store.tier2_darkwoods_best {store.tier2_darkwoods_best=store.current_stage}
if store.tier=3 and store.current_stage>store.tier3_darkwoods_best {store.tier3_darkwoods_best=store.current_stage}
}

if hud.game_victory=1 {exit}

spawn=16+(store.current_stage*3) 
if store.current_stage>5 {spawn+=1}
if store.current_stage>10 {spawn+=2}
if store.status_monsterlure>0 {spawn+=store.status_monsterlure+store.current_stage+2}
//instance_create_depth(240,400,depth,show_round) 
if store.perk_lvl_tutor>0 {store.xp+=store.perk_lvl_tutor*20} 
if store.perk_lvl_flawless>0 {store.gold+=store.perk_lvl_flawless*20 store.gold_earned+=store.perk_lvl_flawless*20}
//REGEN
if store.regen>0 {
store.hp+=store.regen store.regened+=store.regen if store.hp>store.maxhp {store.hp=store.maxhp}
show=instance_create_depth(tower.x-100,tower.y-140,depth,show_text_yellow)
show.myText="HP Regened "+string(store.regen)
}
update_cards_used()
//Daily Interest
if store.interestrate>0 {
var tmpInterest=0
tmpInterest+=min(store.maxinterest,ceil(store.gold*store.interestrate))
store.gold+=tmpInterest
show=instance_create_depth(tower.x-100,tower.y-170,depth,show_text_yellow)
show.myText="Daily Interest +"+string(tmpInterest)
}
if store.dailygem>0 {store.gems+=store.dailygem store.gems_earned+=store.dailygem}
if store.dailygold>0 {
var tmpDailyGold=0
tmpDailyGold+=store.dailygold store.gold_earned+=store.dailygold
store.gold+=tmpDailyGold
show=instance_create_depth(tower.x-100,tower.y-200,depth,show_text_yellow)
show.myText="Daily Gold +"+string(tmpDailyGold)

store.survived+=1

//Check no cards
if store.card_slot_1 = 0 and store.card_slot_2 = 0 and store.card_slot_3 = 0 and store.card_slot_4 = 0 {store.survived_nocards+=1}

//Investor Card
if store.card_slot_1 = 13 or store.card_slot_2 = 13 or store.card_slot_3 = 13 or store.card_slot_4 = 13 or store.card_slot_5 = 13
	{
		store.dailygold+=store.card_lvl_investor
	}
//Tempered Stone Card
if store.card_slot_1 = 16 or store.card_slot_2 = 16 or store.card_slot_3 = 16 or store.card_slot_4 = 16 or store.card_slot_5 = 16
	{
		store.maxhp+=1+store.card_lvl_temperedstone
		//store.hp+=1+store.card_lvl_temperedstone
	}
}

hud.game_paused=1

//Special Random Event
instance_create_depth(600,560,-10000,btn_specialevents)
spawn_boss=1

//Status
if store.status_focuspill>0 {store.status_focuspill-=1}
if store.status_luckyclover>0 {store.status_luckyclover-=1}
if store.status_mirror>0 {store.status_mirror-=1}
if store.status_vampirefang>0 {store.status_vampirefang-=1}
if store.status_healingsalve>0 {store.status_healingsalve-=1}
if store.status_lampoil>0 {store.status_lampoil-=1}
if store.status_monsterlure>0 {store.status_monsterlure-=1}

//Create Stuff
if 80>random(100) {instance_create_depth(x,y,depth,mushrooms)}
if 75>random(100) {instance_create_depth(x,y,depth,mushrooms)}
if 65>random(100) {instance_create_depth(x,y,depth,mushroom_wisdom)}
if 18>random(100) {instance_create_depth(-100,y,depth,chicken)}
if 2>random(300) {repeat 7 instance_create_depth(-100,y,depth,chicken)}

with coin alarm[0]=1

alarm[0]=180}
