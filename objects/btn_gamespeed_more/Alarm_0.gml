// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

if store.game_speed<store.max_gamespeed and hud.game_paused=0 {store.game_speed+=.25 hud.active_gamespeed=store.game_speed}