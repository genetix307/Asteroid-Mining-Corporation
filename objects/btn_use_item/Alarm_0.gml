audio_play_sound(sfx_click,1,false)
effect_btn()


if greyed_out=0 {
if myID=1 {store.have_potion-=1 store.hp+=25}
if myID=2 {store.have_megapotion-=1 store.hp+=100}
if myID=3 {store.have_focuspill-=1 store.status_focuspill+=3}
if myID=4 {store.have_luckyclover-=1 store.status_luckyclover+=3}
if myID=5 {store.have_monsterlure-=1 store.status_monsterlure+=3}
if myID=6 {store.have_healingsalve-=1 store.status_healingsalve+=3}
if myID=7 {store.have_vampirefang-=1 store.status_vampirefang+=3}
if myID=8 {store.have_chicken-=1 store.attack_damage+=5 store.maxhp+=5 store.hp+=5}
if myID=9 {store.have_lampoil-=1 store.status_lampoil+=3}
if myID=10 {store.have_mirror-=1 store.status_mirror+=3}
}