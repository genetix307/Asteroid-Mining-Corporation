image_angle+=spin
if damaged>0 {damaged-=1}
if image_alpha<1 {image_alpha+=.02}

orbit_angle += orbit_speed;
orbit_radius -= spiral_speed;

x = mine_ship.x + lengthdir_x(orbit_radius, orbit_angle);
y = mine_ship.y + lengthdir_y(orbit_radius, orbit_angle);

if hp<=0 
{
//instance_create_depth(other.x,other.y-12,depth-10,blood_splatter)
repeat 6+random(2) instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
myReward=value * (1 + hud.combo_multiplier);
instance_create_depth(other.x,other.y+4,depth,show_text_green).myText="$"+string(myReward)
store.gems+=myReward
hud.run_gems+=myReward
if type="Asteroid" {store.asteroids_destroyed+=1}
if type="Gold Asteroid" {store.gold_destroyed+=1}
if type="Diamond Asteroid" {store.diamond_destroyed+=1}

//Extend Time
if store.mine_asteroid_time_extend_chance>random(100) {hud.run_time+=120 instance_create_depth(other.x+3,other.y-22,depth-15,effect_clock)}
//Spawn
if store.mine_spawn_chance>random(100) {
instance_create_depth(x,y,depth,asteroid)
if store.powerup_hyperspeed=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=1}
if store.powerup_goldrush=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=2}
if store.powerup_supernova=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=3}
if store.powerup_combolock=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=4}
if store.powerup_superfocus=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=5}
if store.powerup_multiblast=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=6}
if store.powerup_asteroidstorm=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=7}
if store.powerup_combosurge=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=8}
if store.powerup_secondwind=1 and 20>random(100) {instance_create_depth(x,y,depth,powerup).myID=9}
}
//Combo
combo_add(hud.combo_per_asteroid);

instance_destroy()
}