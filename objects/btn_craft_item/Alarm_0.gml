audio_play_sound(sfx_click,1,false)
effect_btn()


if greyed_out=0 {
if myID=1 {store.have_potion+=1}
if myID=2 {store.have_megapotion+=1}
if myID=3 {store.have_focuspill+=1}
if myID=4 {store.have_luckyclover+=1}
if myID=5 {store.have_monsterlure+=1}
if myID=6 {store.have_healingsalve+=1}
if myID=7 {store.have_vampirefang+=1}
if myID=8 {store.have_chicken+=1}
if myID=9 {store.have_lampoil+=1}
if myID=10 {store.have_mirror+=1}
if myID=11 {store.have_arrow_basic+=50}
if myID=12 {store.have_arrow_precision+=50}
if myID=13 {store.have_arrow_flame+=50}
if myID=14 {store.have_arrow_frost+=50}
if myID=15 {store.have_arrow_heavy+=50}
if myID=16 {store.have_arrow_power+=50}
if myID=17 {store.have_arrow_vampiric+=50}
if myID=18 {store.have_arrow_bomb+=50}

store.have_crystalshard-=cost_crystalshard
store.have_herbs-=cost_herbs
store.have_beastblood-=cost_beastblood
store.have_boneshard-=cost_boneshard
store.have_oil-=cost_oil
store.have_ironshard-=cost_ironshard
store.have_elementshard-=cost_elementshard
}

save_game()