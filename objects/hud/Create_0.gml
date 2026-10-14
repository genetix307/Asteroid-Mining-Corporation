game_paused=0

run_time=store.mine_time*60
run_end=0
run_gems=0
run_asteroids_destroyed=0
run_interest=0

repeat store.mine_asteroid_spawn instance_create_depth(x,y,depth,asteroid)


var tmpLuckyClover=0
if store.relic_luckyclover>0 {tmpLuckyClover=10}

//Powerups
if store.powerup_hyperspeed=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=1}
if store.powerup_goldrush=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=2}
if store.powerup_supernova=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=3}
if store.powerup_combolock=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=4}
if store.powerup_superfocus=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=5}
if store.powerup_multiblast=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=6}
if store.powerup_asteroidstorm=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=7}
if store.powerup_combosurge=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=8}
if store.powerup_secondwind=1 and (40+tmpLuckyClover)>random(100) {instance_create_depth(x,y,depth,powerup).myID=9}

//Change backdrop
if store.asteroids_destroyed>100 {
layer_bg=layer_get_id("Background")
bg_id=layer_background_get_id(layer_bg)
//if 70>random(100) {layer_background_change(bg_id,bg_space_tile);}
if 20>random(100) {layer_background_change(bg_id,bg_space_tile2);}
if 20>random(100) {layer_background_change(bg_id,bg_space_tile3);}
if 10>random(100) {layer_background_change(bg_id,bg_space_tile4);}
}

//Status
status_hyperspeed=0
status_combolock=0
status_superfocus=0
status_multiblast=0

save_game()

audio_stop_all()
audio_play_sound(bgm_mining,1,true)

// COMBO METER
combo_value = 0;
combo_max = 100;
combo_multiplier = 0;
// How much each destroyed asteroid fills the meter
combo_per_asteroid = 30;
if store.relic_turbocharged>0 {combo_per_asteroid=45}
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