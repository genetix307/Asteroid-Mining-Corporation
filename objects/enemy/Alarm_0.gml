//Set Type
if type="Bone Henchman"
{
sprite_index=spr_enemy_skeleton
move_speed=.60
maxhp=(store.current_stage*2)+2
boss=0
shield=0
attack_damage=2
attack_effect=""
attack_range=10
attack_speed=195
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Bone Shard"
item_rare="Iron Shard"

if store.current_stage>5 {move_speed=.50 maxhp+=store.tier*3}
}

if type="Armored Skeleton"
{
sprite_index=spr_enemy_armored_skeleton
move_speed=.25
maxhp=(store.current_stage*8)+14
boss=0
shield=0
attack_damage=3
attack_effect=""
attack_range=12
attack_speed=240
attack_type="melee"
xp_drop=2
move_pattern="normal"
item="Iron Shard"
item_rare="Bone Shard"
}

if type="Slime"
{
sprite_index=spr_enemy_slime
move_speed=.40
maxhp=5+(store.current_stage*4)
boss=0
shield=0
attack_damage=3
attack_effect=""
attack_range=15
attack_speed=180
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Oil"
item_rare="Element Shard"
}

if type="Ice Slime"
{
sprite_index=spr_enemy_ice_slime
move_speed=.30
maxhp=6+(store.current_stage*5)
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=16
attack_speed=24
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Oil"
item_rare="Element Shard"
}

if type="Baby Slime"
{
sprite_index=spr_enemy_babyslime
move_speed=.70
maxhp=3
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=12
attack_speed=140
attack_type="melee"
xp_drop=1
move_pattern="normal"
}

if type="Crawler"
{
sprite_index=spr_enemy_crawler
move_speed=.35
maxhp=100+(store.current_stage*5)
boss=0
shield=0
attack_damage=5
attack_effect=""
attack_range=16
attack_speed=180
attack_type="melee"
xp_drop=4
move_pattern="normal"
item="Beast Blood"
item_rare="Crystal Shard"
}

if type="Sand Lich"
{
sprite_index=spr_enemy_sand_lich
move_speed=.36
maxhp=36+(store.current_stage*10)
boss=0
shield=0
attack_damage=3
attack_effect=""
attack_range=20
attack_speed=220
attack_type="melee"
xp_drop=3
move_pattern="normal"
item="Beast Blood"
item_rare="Element Shard"
}

if type="Dark Lich"
{
sprite_index=spr_enemy_dark_lich
move_speed=.35
maxhp=60+(store.current_stage*13)
boss=0
shield=0
attack_damage=4
attack_effect=""
attack_range=20
attack_speed=260
attack_type="melee"
xp_drop=4
move_pattern="normal"
item="Beast Blood"
item_rare="Element Shard"
}

if type="Bone Archer"
{
sprite_index=spr_enemy_archer
move_speed=.70
maxhp=3+round(store.current_stage/2)
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=200
attack_speed=180
attack_type="ranged"
xp_drop=1
move_pattern="normal"
item="Bone Shard"
item_rare="Iron Shard"
}

if type="Goblin"
{
sprite_index=spr_enemy_goblin
move_speed=1.40
maxhp=store.current_stage
boss=0
shield=0
attack_damage=2
attack_effect=""
attack_range=12
attack_speed=90
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Beast Blood"
item_rare="Herbs"
}

if type="Roblow"
{
sprite_index=spr_enemy_roblow
move_speed=1.05
maxhp=store.current_stage+24
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=14
attack_speed=75
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Iron Shard"
item_rare="Crystal Shard"
}

if type="Ghoul"
{
sprite_index=spr_enemy_ghoul
move_speed=.35
maxhp=25+round(store.current_stage*4)
boss=0
shield=0
attack_damage=2
attack_effect=""
attack_range=80
attack_speed=240
attack_type="ranged"
xp_drop=2
move_pattern="normal"
item="Herbs"
item_rare="Oil"
}

if type="Red Ghoul"
{
sprite_index=spr_enemy_red_ghoul
move_speed=.18
maxhp=50+round(store.current_stage*6)
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=85
attack_speed=330
attack_type="ranged"
xp_drop=3
move_pattern="normal"
item="Oil"
item_rare="Herbs"
}

if type="Mushkin"
{
sprite_index=spr_enemy_mushkin
move_speed=.35
maxhp=8+(3*store.current_stage)+(2*store.tier)
boss=0
shield=0
attack_damage=3
attack_effect=""
attack_range=10
attack_speed=180
attack_type="melee"
xp_drop=1
move_pattern="delayedrush"
item="Beast Blood"
item_rare="Herbs"
}

if type="Carbuncle"
{
sprite_index=spr_enemy_carbuncle
move_speed=.45
maxhp=65+round(store.current_stage)
boss=0
shield=0
attack_damage=3
attack_effect=""
attack_range=120
attack_speed=270
attack_type="ranged"
xp_drop=3
move_pattern="normal"
item="Beast Blood"
item_rare="Crystal Shard"
}

if type="Stinger"
{
sprite_index=spr_enemy_stinger
move_speed=.6
maxhp=37+round(store.current_stage)
boss=0
shield=0
attack_damage=1
attack_effect=""
attack_range=140
attack_speed=150
attack_type="ranged"
xp_drop=2
move_pattern="normal"
item="Beast Blood"
item_rare="Element Shard"
}

if type="Golem"
{
sprite_index=spr_enemy_golem
move_speed=.25
maxhp=store.tier*100+(store.current_stage*16)+(store.tier*10)
boss=0
shield=0
attack_damage=5
attack_effect=""
attack_range=15
attack_speed=270
attack_type="melee"
xp_drop=3
move_pattern="normal"
item="Iron Shard"
item_rare="Crystal Shard"
}

if type="Boneheads"
{
sprite_index=spr_enemy_boneheads
move_speed=.40
maxhp=50+(store.current_stage*20)
boss=0
shield=0
attack_damage=2
attack_effect=""
attack_range=15
attack_speed=240
attack_type="melee"
xp_drop=1
move_pattern="normal"
item="Bone Shard"
item_rare="Crystal Shard"
}

///////////////BOSSES//////////////////////////////////////////////////////////

if type="Boss Hamelot"
{
sprite_index=spr_boss_hamelot
move_speed=.20
maxhp=400+(store.current_stage*10)+(store.tier*30)
boss=1
shield=0
attack_damage=7+store.tier
attack_effect=""
attack_range=90
attack_speed=180
attack_type="melee"
xp_drop=25
move_pattern="normal"
}

if type="Boss Slime Queen"
{
sprite_index=spr_boss_slimequeen
move_speed=.25
maxhp=500+(store.current_stage*10)
boss=1
shield=0
attack_damage=8
attack_effect=""
attack_range=180
attack_speed=240
attack_type="melee"
xp_drop=25
move_pattern="normal"
}

if type="Boss Dark Rider"
{
sprite_index=spr_boss_darkrider
move_speed=.20
maxhp=2500+(store.current_stage*10)
boss=1
shield=0
attack_damage=10
attack_effect=""
attack_range=230
attack_speed=260
attack_type="ranged"
xp_drop=25
move_pattern="normal"
}

//Post stats
maxhp+=store.enemy_base_level
attack_damage+=store.enemy_base_level

if store.tier>1 {
maxhp+=store.tier
maxhp*=store.tier
attack_damage+=store.tier*2}
if store.tier>1 {maxhp+=5 attack_damage+=store.tier}
if store.tier>2 {maxhp+=10*store.tier attack_damage+=store.tier}
if store.tier>3 {maxhp+=15*store.tier attack_damage+=store.tier move_speed+=.01*store.tier}
if store.tier>4 {maxhp+=20*store.tier attack_damage+=store.tier}
if store.tier>5 {maxhp+=25*store.tier attack_damage+=store.tier move_speed+=.01*store.tier}
if store.tier>6 {maxhp+=30*store.tier attack_damage+=store.tier}
if room=rm_winter_hills {maxhp+=3 attack_damage+=1}
if room=rm_desolate_desert {maxhp+=8 attack_damage+=2}
if room=rm_dark_woods {maxhp+=15 attack_damage+=5}


//Endless stats
if store.current_stage>35 {maxhp+=round(store.tier*store.current_stage*5) attack_damage+=round(store.tier*(store.current_stage/10)) move_speed+=(.005*store.current_stage)}
if store.current_stage>36 {maxhp+=round(store.tier*10) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>37 {maxhp+=round(store.tier*15) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>38 {maxhp+=round(store.tier*20) attack_damage+=store.tier move_speed+=.02}
if store.current_stage>39 {maxhp+=round(store.tier*25) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>40 {maxhp+=round(store.tier*30) attack_damage+=store.tier move_speed+=.04}
if store.current_stage>41 {maxhp+=round(store.tier*45) attack_damage+=store.tier move_speed+=.05}
if store.current_stage>45 {maxhp+=round(store.tier*50*store.current_stage) attack_damage+=(store.tier*store.current_stage) move_speed+=.05}
if store.current_stage>46 {maxhp+=round(store.tier*55) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>47 {maxhp+=round(store.tier*70) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>48 {maxhp+=round(store.tier*75) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>49 {maxhp+=round(store.tier*85) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>50 {maxhp+=round(store.tier*95) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>51 {maxhp+=round(store.tier*105) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>52 {maxhp+=round(store.tier*115) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>53 {maxhp+=round(store.tier*125) attack_damage+=store.tier move_speed+=.03}
if store.current_stage>54 {maxhp+=round(store.tier*150) attack_damage+=store.tier move_speed+=.05}
if store.current_stage>57 {maxhp+=round(store.tier*150) attack_damage+=store.tier move_speed+=.05}
if store.current_stage>60 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.05}
if store.current_stage>65 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>70 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>75 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>80 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>90 {maxhp+=round(store.tier*200) attack_damage+=store.tier move_speed+=.01}
if store.current_stage>100 {maxhp+=round(store.tier*300) attack_damage+=store.tier move_speed+=.02}

if boss=1 {maxhp+=store.tier*(store.tier*30)}

hp=maxhp