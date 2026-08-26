audio_play_sound(sfx_click,1,false)
effect_btn()
if store.fullscreen=0 {store.fullscreen=1} else {store.fullscreen=0}

if store.fullscreen = 0 {
window_set_fullscreen(false);
window_set_size(1280, 720);
window_center();}
if store.fullscreen = 1 {window_set_fullscreen(true);}