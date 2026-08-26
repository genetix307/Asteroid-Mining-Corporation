alarm[1]=round(60*store.game_speed)

if onfire>0 {
hp-=ceil(store.attack_damage*.10)
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_create_depth(x-5,y-(32+random(8)),depth,effect_show_damage).myDamage=ceil(store.attack_damage*.10)}