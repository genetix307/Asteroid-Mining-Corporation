if hud.game_paused=0 and hud.game_over=0 {

//Shoot Arrow
if instance_number(def_enemy)>0 
{
focus_direction=point_direction(x,y,instance_nearest(x,y,def_enemy).x,instance_nearest(x,y,def_enemy).y)
if mouse_check_button(mb_left) {focus_direction=point_direction(x,y,device_mouse_x(0),device_mouse_y(0))}
if distance_to_object(instance_nearest(x,y,def_enemy))<store.attack_range and reload_arrow<=0 {instance_create_depth(x,y,depth,weapon_arrow) reload_arrow=check_speed() image_speed=1}
}

//Reload Arrow
if reload_arrow>0 {reload_arrow-=1*store.game_speed}
if reload_arrow<0 {reload_arrow=0}

depth=-y-222

}

//Follow enemy
if instance_number(def_enemy)>0 
{
if instance_nearest(x,y,def_enemy).x>x and x<400 {x+=.5*store.game_speed}
if instance_nearest(x,y,def_enemy).x<x and x>80 {x-=.5*store.game_speed}
}