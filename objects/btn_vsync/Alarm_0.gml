audio_play_sound(sfx_click,1,false)
effect_btn()
if store.vsync=0 {store.vsync=1} else {store.vsync=0}

if store.vsync = 0 {display_reset(0, false); }
if store.vsync = 1 {display_reset(0, true);}