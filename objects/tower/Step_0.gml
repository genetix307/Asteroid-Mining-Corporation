// Genetix Studio
image_index = 0
//if hud.tower_hp <(hud.tower_maxhp*.45) {image_index =1}
//if hud.tower_hp <(hud.tower_maxhp*.25) {image_index = 2}

//last_hit +=1

//if last_hit > 1200 {difficulty_boost =last_hit/1200} else {difficulty_boost = 0}

if hud.game_paused=0 and hud.game_over=0 {

//Shoot Arrow
if instance_number(def_enemy)>0 and hud.current_arrow_count>0
{
focus_direction=point_direction(x,y,instance_nearest(x,y,def_enemy).x,instance_nearest(x,y,def_enemy).y)
if mouse_check_button(mb_left) {focus_direction=point_direction(x,y,device_mouse_x(0),device_mouse_y(0))}
if distance_to_object(instance_nearest(x,y,def_enemy))<store.attack_range and reload_arrow<=0 {instance_create_depth(x,y,depth,weapon_arrow) reload_arrow=check_speed() image_speed=1}
}

//Reload Arrow
if reload_arrow>0 {reload_arrow-=1*store.game_speed}
if reload_arrow<0 {reload_arrow=0}
//depth=-y-222
}

if damaged>0 {damaged-=1*store.game_speed}
if damaged<0 {damaged=0}
if invincible>0 and hud.game_paused=0 and hud.backpack=0 {invincible-=1*store.game_speed}
if slow>0 {slow-=1*store.game_speed}
if burn>0 {burn-=1*store.game_speed}
if super_critical>0 {super_critical-=1*store.game_speed}

image_index = 0
if store.hp <(store.maxhp*.50) {image_index =1}
if store.hp <(store.maxhp*.25) {image_index =2}