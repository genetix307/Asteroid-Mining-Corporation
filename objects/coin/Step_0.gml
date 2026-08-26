if speed>0 {speed-=.1}
if image_alpha<1 {image_alpha+=.1}

if move>=1 and instance_number(tower)>0 {mp_linear_step(tower.x,tower.y,10*store.game_speed,false)}
//Kill Coin
if distance_to_point(tower.x,tower.y)<10 and type=0 {instance_destroy() store.gold+=store.killgold store.gold_earned+=store.killgold instance_destroy()}
//Single Coin
if distance_to_point(tower.x,tower.y)<10 and type=1 {instance_destroy() store.gold+=1 store.gold_earned+=1 instance_destroy()}

if distance_to_object(cursor_game)<30 and move=0 {move=1 y-=8 audio_play_sound(sfx_coin,1,false)}