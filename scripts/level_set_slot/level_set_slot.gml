// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_set_slot(){
if my_id=0 {
myHeader="Slot Empty"
myInfo=""
}
if my_id=1 {
myHeader="Brawn"
myInfo="Gain +"+string(3+store.perk_lvl_brawn)+" Attack Damage"
myLevel="Level "+string(store.perk_lvl_brawn)+">"+string(store.perk_lvl_brawn+1)
if store.perk_lvl_brawn=0 {isNew=1}
}
if my_id=2 {
myHeader="Toughskin"
myInfo="Gain +1 Defense"
myLevel="Level "+string(store.perk_lvl_toughskin)+">"+string(store.perk_lvl_toughskin+1)
if store.perk_lvl_toughskin=0 {isNew=1}
}
if my_id=3 {
myHeader="Swift"
myInfo="Gain +.15 Attack Speed"
myLevel="Level "+string(store.perk_lvl_swift)+">"+string(store.perk_lvl_swift+1)
if store.perk_lvl_swift=0 {isNew=1}
}
if my_id=4 {
myHeader="Mended"
myInfo="Gain +5 Daily Regen"
myLevel="Level "+string(store.perk_lvl_mended)+">"+string(store.perk_lvl_mended+1)
if store.perk_lvl_mended=0 {isNew=1}
}
if my_id=5 {
myHeader="Iron Walls"
myInfo="Gain +10 Max HP"
myLevel="Level "+string(store.perk_lvl_ironwalls)+">"+string(store.perk_lvl_ironwalls+1)
if store.perk_lvl_ironwalls=0 {isNew=1}
}
if my_id=6 {
myHeader="Sharpshooter"
myInfo="Gain +2% Critical Chance"
myLevel="Level "+string(store.perk_lvl_sharpshooter)+">"+string(store.perk_lvl_sharpshooter+1)
if store.perk_lvl_sharpshooter=0 {isNew=1}
}
if my_id=7 {
myHeader="Miner"
myInfo="Gain +"+string((store.perk_lvl_miner+1)*5+20)+" Gems"
myLevel="Level "+string(store.perk_lvl_miner)+">"+string(store.perk_lvl_miner+1)
if store.perk_lvl_miner=0 {isNew=1}
}
if my_id=8 {
myHeader="Heavy Hitter"
myInfo="Gain +5 Knockback"
myLevel="Level "+string(store.perk_lvl_heavyhitter)+">"+string(store.perk_lvl_heavyhitter+1)
if store.perk_lvl_heavyhitter=0 {isNew=1}
}
if my_id=9 {
myHeader="Snake Eyes"
myInfo="Gain +1% Luck"
myLevel="Level "+string(store.perk_lvl_snakeeyes)+">"+string(store.perk_lvl_snakeeyes+1)
if store.perk_lvl_snakeeyes=0 {isNew=1}
}
if my_id=10 {
myHeader="Wisdom"
myInfo="Souls worth +1 XP"
myLevel="Level "+string(store.perk_lvl_wisdom)+">"+string(store.perk_lvl_wisdom+1)
if store.perk_lvl_wisdom=0 {isNew=1}
}
if my_id=11 {
myHeader="Dividends"
myInfo="+"+string((store.perk_lvl_flawless+1)*20)+" Gold Each Day"
myLevel="Level "+string(store.perk_lvl_flawless)+">"+string(store.perk_lvl_flawless+1)
if store.perk_lvl_flawless=0 {isNew=1}
}
if my_id=12 {
myHeader="Tutor"
myInfo="+"+string((store.perk_lvl_tutor+1)*20)+" XP each Round."
myLevel="Level "+string(store.perk_lvl_tutor)+">"+string(store.perk_lvl_tutor+1)
if store.perk_lvl_tutor=0 {isNew=1}
}
if my_id=13 {
myHeader="Boss Slayer"
myInfo="Deal +"+string((store.perk_lvl_bossslayer+1)*10)+" damage to Bosses"
myLevel="Level "+string(store.perk_lvl_bossslayer)+">"+string(store.perk_lvl_bossslayer+1)
if store.perk_lvl_bossslayer=0 {isNew=1}
}
if my_id=14 {
myHeader="Limit Break"
myInfo="Every 5th Arrow +"+string((store.perk_lvl_limitbreak+1)*10)+" damage"
myLevel="Level "+string(store.perk_lvl_limitbreak)+">"+string(store.perk_lvl_limitbreak+1)
if store.perk_lvl_limitbreak=0 {isNew=1}
}
if my_id=15 {
myHeader="Restoration"
myInfo="Restore up to 50 HP"
myLevel="Level "+string(store.perk_lvl_restoration)+">"+string(store.perk_lvl_restoration+1)
if store.perk_lvl_restoration=0 {isNew=1}
}
if my_id=16 {
myHeader="Frost Tips"
myInfo="Arrows have a "+string((store.perk_lvl_frosttips+1)*10)+"% chance to Freeze enemies"
myLevel="Level "+string(store.perk_lvl_frosttips)+">"+string(store.perk_lvl_frosttips+1)
if store.perk_lvl_frosttips=0 {isNew=1}
}
if my_id=17 {
myHeader="Flame Tips"
myInfo="Arrows have a "+string((store.perk_lvl_flametips+1)*10)+"% chance to set enemies on fire"
myLevel="Level "+string(store.perk_lvl_flametips)+">"+string(store.perk_lvl_flametips+1)
if store.perk_lvl_flametips=0 {isNew=1}
}

}