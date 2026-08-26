if speed>0 {speed-=.1}
if image_alpha<1 {image_alpha+=.1}

if move>=1  {mp_linear_step(0,0,16*store.game_speed,false)}

if x<8 and y<8 {instance_destroy()}

if distance_to_object(cursor_game)<30 and move=0 {move=1 y-=8}