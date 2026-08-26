audio_play_sound(sfx_click,1,false)
effect_btn()

if greyed_out=0 {
if myID=1 {store.have_potion+=1 store.gems-=cost}
if myID=2 {store.have_megapotion+=1 store.gems-=cost}
if myID=3 {store.have_focuspill+=1 store.gems-=cost}
if myID=4 {store.have_luckyclover+=1 store.gems-=cost}
if myID=5 {store.have_monsterlure+=1 store.gems-=cost}
if myID=6 {store.have_healingsalve+=1 store.gems-=cost}
if myID=7 {store.have_vampirefang+=1 store.gems-=cost}
if myID=8 {store.have_chicken+=1 store.gems-=cost}
if myID=9 {store.have_lampoil+=1 store.gems-=cost}
if myID=10 {store.have_mirror+=1 store.gems-=cost}
if myID=11 {store.have_arrow_basic+=50 store.gems-=cost}
if myID=12 {store.have_arrow_precision+=50 store.gems-=cost}
if myID=13 {store.have_arrow_flame+=50 store.gems-=cost}
if myID=14 {store.have_arrow_frost+=50 store.gems-=cost}
if myID=15 {store.have_arrow_heavy+=50 store.gems-=cost}
if myID=16 {store.have_arrow_power+=50 store.gems-=cost}
if myID=17 {store.have_arrow_vampiric+=50 store.gems-=cost}
if myID=18 {store.have_arrow_bomb+=50 store.gems-=cost}
}

save_game()