// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_upgrade(){
if my_id=1 {
store.perk_lvl_brawn+=1
store.attack_damage+=2+store.perk_lvl_brawn
}
if my_id=2 {
store.perk_lvl_toughskin+=1
store.defense+=1
}
if my_id=3 {
store.perk_lvl_swift+=1
store.attack_speed+=.15
}
if my_id=4 {
store.perk_lvl_mended+=1
store.regen+=5
}
if my_id=5 {
store.perk_lvl_ironwalls+=1
store.maxhp+=10
store.hp+=10
}
if my_id=6 {
store.perk_lvl_sharpshooter+=1
store.critical_chance+=2
}
if my_id=7 {
store.perk_lvl_miner+=1
store.gems+=20+store.perk_lvl_miner*5
}
if my_id=8 {
store.perk_lvl_heavyhitter+=1
store.knockback+=5
}
if my_id=9 {
store.perk_lvl_snakeeyes+=1
store.luck+=1
}
if my_id=10 {
store.perk_lvl_wisdom+=1
//Orbs +XP
}
if my_id=11 {
store.perk_lvl_flawless+=1
}
if my_id=12 {
store.perk_lvl_tutor+=1
}
if my_id=13 {
store.perk_lvl_bossslayer+=1
}
if my_id=14 {
store.perk_lvl_limitbreak+=1
}
if my_id=15 {
store.perk_lvl_restoration+=1
store.hp+=50
if store.hp>store.maxhp {store.hp=store.maxhp}
}
if my_id=16 {
store.perk_lvl_frosttips+=1
}
if my_id=17 {
store.perk_lvl_flametips+=1
}


}