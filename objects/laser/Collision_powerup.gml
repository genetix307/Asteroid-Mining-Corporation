audio_play_sound(sfx_enemy_hit,1,false,1.05-sound_fade,,.75+random(.25))

other.hp-=attack_damage

instance_create_depth(other.x,other.y-8,depth-10,asteroid_debris)
instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-5,effect_smoke_small)
instance_destroy()

