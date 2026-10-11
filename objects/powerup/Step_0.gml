
if damaged>0 {damaged-=1}

orbit_angle += orbit_speed;
orbit_radius -= spiral_speed;

x = mine_ship.x + lengthdir_x(orbit_radius, orbit_angle);
y = mine_ship.y + lengthdir_y(orbit_radius, orbit_angle);

if hp<=0 
{
repeat 6+random(2) instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
instance_create_depth(other.x,other.y+4,depth,show_text_green).myText=string(type)

if type="Hyper Speed" {hud.status_hyperspeed=300}
if type="Gold Rush" {repeat 5 instance_create_depth(x,y,depth,asteroid).spawntype="Gold Asteroid"}
if type="Super Nova" {instance_create_depth(x,y,depth,supernova_explosion)}
if type="Combo Lock" {hud.status_combolock=300}
if type="Super Focus" {hud.status_superfocus=300}
if type="Multiblast" {hud.status_multiblast=300}
if type="Asteroid Storm" {repeat 25 instance_create_depth(x,y,depth,asteroid)}
if type="Combo Surge" {combo_add(hud.combo_max);}
if type="Second Wind" {hud.run_time+=300}

store.powerups_used+=1

instance_destroy()
}