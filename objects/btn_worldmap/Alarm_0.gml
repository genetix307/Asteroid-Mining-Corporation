// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()
reset_run()
save_game()

if store.story_scene=1 {room=rm_story_tothecastle}
else {room=rm_worldmap}

