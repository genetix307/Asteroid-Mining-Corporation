// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()
reset_run()
if store.story_scene=1 {room=rm_story_tothecastle exit}
if store.story_scene=2 and instance_number(hud)>0 {if hud.game_victory=1 {room=rm_story_firstvictory exit}}
room=rm_castle

