audio_play_sound(sfx_shatter,1,false)
effect_btn()

repeat 6 instance_create_depth(x+random_range(-28,28),y+random_range(-8,8),depth-5,effect_smoke_small)

if myItem="Crystal Shard" {instance_create_depth(x,y,depth,item_crystalshard)}
if myItem="Iron Shard" {instance_create_depth(x,y,depth,item_ironshard)}
if myItem="Element Shard" {instance_create_depth(x,y,depth,item_elementshard)}
if myItem="Oil" {instance_create_depth(x,y,depth,item_oil)}

cursor_menu.image_angle+=50
store.crystals_mined+=1
instance_destroy()