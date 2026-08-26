direction=point_direction(x,y,mine_crosshair.x,mine_crosshair.y)
image_angle=direction-90
if reload>0 {reload-=1}

//Fire Weapon
focus_direction = point_direction(x,y,mine_crosshair.x,mine_crosshair.y)

if reload<=0 and hud_mining.run_end=0 {
		instance_create_depth(x,y-4,depth,mine_laser).direction = focus_direction
		if store.mine_multishot_chance > random(100) {
				instance_create_depth(x,y-4,depth,mine_laser).direction = focus_direction+10
				instance_create_depth(x,y-4,depth,mine_laser).direction = focus_direction-10
				if store.relic_multiplicity=1 {
				instance_create_depth(x,y-4,depth,mine_laser).direction = focus_direction+25
				instance_create_depth(x,y-4,depth,mine_laser).direction = focus_direction-25
				}
				store.multishots+=1
		}
			
reload = max(6,120/(1+store.mine_speed))
}