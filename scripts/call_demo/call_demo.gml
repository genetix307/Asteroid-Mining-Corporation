// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function call_demo(){
//SHOW DEMO CTA
if store.demo_cta=0 {
store.demo_cta=1
save_game()
room=rm_demo_cta
}
}