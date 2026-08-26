// Genetix Studio
if greyed_out=0 {
audio_play_sound(sfx_click,1,false)
effect_btn()

if instance_number(btn_choose_weapon)<=0 {
if instance_number(btn_stat_upgrade)>0 {with btn_stat_upgrade instance_destroy()}
if instance_number(btn_use_item)>0 {with btn_use_item instance_destroy()}
if store.game_speed>.25 {hud.active_gamespeed=store.game_speed}
store.game_speed=.25
inst=instance_create_depth(880,460,depth,btn_choose_weapon) inst.myID=1
inst=instance_create_depth(1145,460,depth,btn_choose_weapon) inst.myID=2
inst=instance_create_depth(880,520,depth,btn_choose_weapon) inst.myID=3
inst=instance_create_depth(1145,520,depth,btn_choose_weapon) inst.myID=4
inst=instance_create_depth(880,580,depth,btn_choose_weapon) inst.myID=5
inst=instance_create_depth(1145,580,depth,btn_choose_weapon) inst.myID=6
inst=instance_create_depth(880,640,depth,btn_choose_weapon) inst.myID=7
inst=instance_create_depth(1145,640,depth,btn_choose_weapon) inst.myID=8
}
else {with btn_choose_weapon instance_destroy() store.game_speed=hud.active_gamespeed}
}