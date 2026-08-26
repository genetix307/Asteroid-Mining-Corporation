// Genetix Studio
depth=hud.depth-40
//player.speed=0
store.level +=1
//store.level_gained+=1
store.xp-=store.next_level
store.next_level = floor(store.level*10)
audio_play_sound(sfx_levelup,1,false)
ray_angle = 0

alarm[0]=1 //Create Level Choice Buttons

//Make confetti
repeat 500 instance_create_depth(x,y,depth+10,effect_confetti)

//Card - Growth Spurt
//if store.card[6]>=1 {store.maxhp+=store.card[6] store.hp+=store.card[6]}