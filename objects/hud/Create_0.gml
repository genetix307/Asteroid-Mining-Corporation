game_paused=0

run_time=store.mine_time*60
run_end=0
run_gems=0

repeat store.mine_asteroid_spawn instance_create_depth(x,y,depth,asteroid)

save_game()

audio_stop_all()
audio_play_sound(bgm_mining,1,true)

// COMBO METER
combo_value = 0;
combo_max = 100;
combo_multiplier = 0;
// How much each destroyed asteroid fills the meter
combo_per_asteroid = 30;
// How quickly the meter drains per second
combo_drain_rate = 20;
// Colors for each multiplier level
combo_colors = [
    c_aqua,
    c_lime,
    c_yellow,
    c_orange,
    c_fuchsia,
    c_red
];

combo_pulse = 0;
combo_flash = 0;