if locked=1 and store.keys>=3 {
audio_play_sound(sfx_upgrade,1,false)
store.keys-=3
locked=0
store.powerups_unlocked+=1

if myID=1 {store.powerup_hyperspeed=1}
if myID=2 {store.powerup_goldrush=1}
if myID=3 {store.powerup_supernova=1}
if myID=4 {store.powerup_combolock=1}
if myID=5 {store.powerup_superfocus=1}
if myID=6 {store.powerup_multiblast=1}
if myID=7 {store.powerup_asteroidstorm=1}
if myID=8 {store.powerup_combosurge=1}
if myID=9 {store.powerup_secondwind=1}

image_index=myID-1
image_speed=0
save_game()
}