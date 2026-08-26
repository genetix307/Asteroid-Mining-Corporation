alarm[0]=round(move_speed/store.game_speed)
if distance_to_object(tower)>0 {
tmpTrail=instance_create_depth(x,y,depth-1,effect_trail_arrow)
tmpTrail.image_angle=image_angle

if type="Basic" {tmpTrail.tail=0}
if type="Precision" {tmpTrail.tail=1}
if type="Flame" {tmpTrail.tail=2}
if type="Frost" {tmpTrail.tail=3}
if type="Heavy" {tmpTrail.tail=4}
if type="Power" {tmpTrail.tail=5}
if type="Vampiric" {tmpTrail.tail=6}
if type="Bomb" {tmpTrail.tail=7}
	
//Arrow Items
//store.have_arrow_basic=999999
//store.have_arrow_flame=0
//store.have_arrow_frost=0
//store.have_arrow_heavy=0
//store.have_arrow_power=0
//store.have_arrow_precision=0
//store.have_arrow_vampiric=0
//store.have_arrow_bomb=0

//if store.perk_lvl_limitbreak>0 and store.limitbreak>=4 {instance_create_depth(x,y,depth-1,effect_trail_arrow_limitbreak).image_angle=image_angle}
}
