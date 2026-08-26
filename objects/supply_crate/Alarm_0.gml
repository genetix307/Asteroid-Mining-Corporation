if opened=0 {
store.gold+=myGold
store.gems+=myGems

if myArrow="Basic Arrow" {store.have_arrow_basic+=myArrowCount}
if myArrow="Precision Arrow" {store.have_arrow_precision+=myArrowCount}
if myArrow="Flame Arrow" {store.have_arrow_flame+=myArrowCount}
if myArrow="Frost Arrow" {store.have_arrow_frost+=myArrowCount}
if myArrow="Heavy Arrow" {store.have_arrow_heavy+=myArrowCount}
if myArrow="Power Arrow" {store.have_arrow_power+=myArrowCount}
if myArrow="Vampiric Arrow" {store.have_arrow_vampiric+=myArrowCount}
if myArrow="Bomb Arrow" {store.have_arrow_bomb+=myArrowCount}

opened=1
image_index=1
audio_play_sound(sfx_crate,1,false)
}