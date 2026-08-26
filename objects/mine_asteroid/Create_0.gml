image_speed=0
image_index = irandom(sprite_get_number(sprite_index) - 1);

x=random(room_width)
y=random(room_height)

while distance_to_object(mine_ship)<50 or distance_to_object(mine_ship)>670 {
x=random(room_width)
y=random(room_height)
}

image_xscale=store.mine_asteroid_size +random(.2)
image_yscale=store.mine_asteroid_size +random(.2)

spin=random_range(-3,3)
shield=0
type="Asteroid"

orbit_angle = point_direction(mine_ship.x, mine_ship.y, x, y);
orbit_radius = point_distance(mine_ship.x, mine_ship.y, x, y);

orbit_speed = .1+random(.3)
spiral_speed = .05+random(.07)

maxhp=store.mine_asteroid_density*2
value=1+(store.mine_asteroid_density*2)

//Turn Gold
if store.mine_asteroid_gold_chance>random(100)
{
sprite_index=spr_asteroid_gold
value=5*value
maxhp=maxhp*2
type="Gold Asteroid"
}

//Turn Diamond
if store.mine_asteroid_diamond_chance>random(100)
{
diamond=1
sprite_index=spr_asteroid_diamond
value=10*value
maxhp=maxhp*5
type="Diamond Asteroid"
}

hp=maxhp