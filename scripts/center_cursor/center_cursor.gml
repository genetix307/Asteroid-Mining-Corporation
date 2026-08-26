// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function center_cursor(){
if instance_number(cursor_game)>0 {
cursor_game.x=x
cursor_game.y=y	
}

if instance_number(cursor_menu)>0 {
cursor_menu.x=x
cursor_menu.y=y	
}


}