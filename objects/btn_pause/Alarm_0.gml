// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

if hud.game_paused = 0 and hud.game_over=0 {
hud.game_paused = 1
//with default_ingame_tab {instance_destroy()}
//Create Settings buttons
//instance_create_depth(340,880,depth-10,btn_resume)
instance_create_depth(1125,120,depth-10,btn_sfx)
instance_create_depth(1125,175,depth-10,btn_bgm)
instance_create_depth(1125,230,depth-10,btn_set_colorscheme)
instance_create_depth(1125,285,depth-10,btn_abandon_run)
//instance_create_depth(90,760,depth-10,btn_auto_crate)
//instance_create_depth(240,760,depth-10,btn_auto_perk)
//instance_create_depth(390,760,depth-10,btn_auto_events)
//instance_create_depth(240,700,depth-10,btn_gamespeed)
//Show Challenges
//instance_create_depth(241,134,depth-10,btn_challenge).my_slot=0
//instance_create_depth(241,204,depth-10,btn_challenge).my_slot=1
//instance_create_depth(241,274,depth-10,btn_challenge).my_slot=2
//Show Cards
instance_create_depth(700,647,depth-10,card_show_pause).my_slot=0
instance_create_depth(825,647,depth-10,card_show_pause).my_slot=1
instance_create_depth(950,647,depth-10,card_show_pause).my_slot=2
instance_create_depth(1075,647,depth-10,card_show_pause).my_slot=3
instance_create_depth(1200,647,depth-10,card_show_pause).my_slot=4
} else {hud.game_paused = 0}