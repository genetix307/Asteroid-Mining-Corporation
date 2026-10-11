image_speed=0
//image_index = 1+irandom(sprite_get_number(sprite_index) - 1);

x=random(room_width)
y=random(room_height)

while distance_to_object(mine_ship)<50 or distance_to_object(mine_ship)>670 {
x=random(room_width)
y=random(room_height)
}

//image_xscale=store.mine_asteroid_size +random(.2)
//image_yscale=store.mine_asteroid_size +random(.2)

myID=0
type=""
damaged=0

orbit_angle = point_direction(mine_ship.x, mine_ship.y, x, y);
orbit_radius = point_distance(mine_ship.x, mine_ship.y, x, y);

orbit_speed = .1+random(.3)
spiral_speed = .05+random(.07)

hp=1
alarm[0]=2