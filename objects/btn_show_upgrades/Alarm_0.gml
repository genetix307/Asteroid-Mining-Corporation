// Genetix Studio
if greyed_out=0 {
audio_play_sound(sfx_click,1,false)
effect_btn()

if instance_number(btn_stat_upgrade)<=0 {
if instance_number(btn_use_item)>0 {with btn_use_item instance_destroy()}
if instance_number(btn_choose_weapon)>0 {with btn_choose_weapon instance_destroy()}
if store.game_speed>.25 {hud.active_gamespeed=store.game_speed}
store.game_speed=.25
inst=instance_create_depth(880,220,depth,btn_stat_upgrade) inst.myID=5
inst=instance_create_depth(1145,220,depth,btn_stat_upgrade) inst.myID=2
inst=instance_create_depth(880,280,depth,btn_stat_upgrade) inst.myID=3
inst=instance_create_depth(1145,280,depth,btn_stat_upgrade) inst.myID=6
inst=instance_create_depth(880,340,depth,btn_stat_upgrade) inst.myID=1
inst=instance_create_depth(1145,340,depth,btn_stat_upgrade) inst.myID=4
inst=instance_create_depth(880,400,depth,btn_stat_upgrade) inst.myID=11
inst=instance_create_depth(1145,400,depth,btn_stat_upgrade) inst.myID=8
inst=instance_create_depth(880,460,depth,btn_stat_upgrade) inst.myID=7
inst=instance_create_depth(1145,460,depth,btn_stat_upgrade) inst.myID=10
inst=instance_create_depth(880,520,depth,btn_stat_upgrade) inst.myID=9
inst=instance_create_depth(1145,520,depth,btn_stat_upgrade) inst.myID=12
inst=instance_create_depth(880,580,depth,btn_stat_upgrade) inst.myID=15
inst=instance_create_depth(1145,580,depth,btn_stat_upgrade) inst.myID=14
inst=instance_create_depth(880,640,depth,btn_stat_upgrade) inst.myID=17
inst=instance_create_depth(1145,640,depth,btn_stat_upgrade) inst.myID=16
inst=instance_create_depth(880,700,depth,btn_stat_upgrade) inst.myID=13
inst=instance_create_depth(1145,700,depth,btn_stat_upgrade) inst.myID=18

}
else {with btn_stat_upgrade instance_destroy() store.game_speed=hud.active_gamespeed}
}