if locked=1 and store.keys>=5 {
audio_play_sound(sfx_upgrade,1,false)
store.keys-=5
locked=0
store.relics_unlocked+=1

if myID=1 {store.relic_turbocharged=1}
if myID=2 {store.relic_tball=1}
if myID=3 {store.relic_multiplicity=1}
if myID=4 {store.relic_earlybird=1}
if myID=5 {store.relic_snowball=1}
if myID=6 {store.relic_bouncy=1}
if myID=7 {store.relic_criticalgold=1}
if myID=8 {store.relic_investor=1}
if myID=9 {store.relic_luckyclover=1}
if myID=10 {store.relic_combinator=1}
if myID=11 {store.relic_lastsecond=1}
if myID=12 {store.relic_timedstrike=1}

image_index=myID-1
image_speed=0
save_game()
}