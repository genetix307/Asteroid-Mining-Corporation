image_angle+=spin

orbit_angle += orbit_speed;
orbit_radius -= spiral_speed;

x = mine_ship.x + lengthdir_x(orbit_radius, orbit_angle);
y = mine_ship.y + lengthdir_y(orbit_radius, orbit_angle);

if hp<=0 
{
//instance_create_depth(other.x,other.y-12,depth-10,blood_splatter)
repeat 5 instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
instance_create_depth(other.x,other.y+4,depth,show_text_green).myText=value
store.gems+=value
hud.run_gems+=value

//Extend Time
if store.mine_asteroid_time_extend_chance>random(100) {hud.run_time+=120 instance_create_depth(other.x+3,other.y-22,depth-15,effect_clock)}
//Spawn
if store.mine_spawn_chance>random(100) {instance_create_depth(x,y,depth,mine_asteroid)}

instance_destroy()
}