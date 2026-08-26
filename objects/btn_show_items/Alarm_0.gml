// Genetix Studio
if greyed_out=0 {
audio_play_sound(sfx_click,1,false)
effect_btn()

if instance_number(btn_use_item)<=0 {
if instance_number(btn_stat_upgrade)>0 {with btn_stat_upgrade instance_destroy()}
if instance_number(btn_choose_weapon)>0 {with btn_choose_weapon instance_destroy()}
if store.game_speed>.25 {hud.active_gamespeed=store.game_speed}
store.game_speed=.25
inst=instance_create_depth(880,460,depth,btn_use_item) inst.myID=1
inst=instance_create_depth(1145,460,depth,btn_use_item) inst.myID=2
inst=instance_create_depth(880,520,depth,btn_use_item) inst.myID=6
inst=instance_create_depth(1145,520,depth,btn_use_item) inst.myID=8
inst=instance_create_depth(880,580,depth,btn_use_item) inst.myID=5
inst=instance_create_depth(1145,580,depth,btn_use_item) inst.myID=4
inst=instance_create_depth(880,640,depth,btn_use_item) inst.myID=7
inst=instance_create_depth(1145,640,depth,btn_use_item) inst.myID=3
inst=instance_create_depth(880,700,depth,btn_use_item) inst.myID=9
inst=instance_create_depth(1145,700,depth,btn_use_item) inst.myID=10

//if myID=1 {store.have_potion-=1 store.hp+=25}
//if myID=2 {store.have_megapotion-=1 store.hp+=100}
//if myID=3 {store.have_focuspill-=1 store.status_focuspill=3}
//if myID=4 {store.have_luckyclover-=1 store.status_luckyclover=3}
//if myID=5 {store.have_monsterlure-=1 store.status_monsterlure=3}
//if myID=6 {store.have_healingsalve-=1 store.status_healingsalve=3}
//if myID=7 {store.have_vampirefang-=1 store.status_vampirefang=3}
//if myID=8 {store.have_chicken-=1 store.attack_damage+=5 store.maxhp+=5 store.hp+=5}
//if myID=9 {store.have_lampoil-=1 store.status_lampoil=3}
//if myID=10 {store.have_mirror-=1 store.status_mirror=3}
}
else {with btn_use_item instance_destroy() store.game_speed=hud.active_gamespeed}
}