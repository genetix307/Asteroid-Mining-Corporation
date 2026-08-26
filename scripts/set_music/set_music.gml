// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_music(){
if room=rm_menu_home and !audio_is_playing(bgm_title) {audio_stop_all() audio_play_sound(bgm_title,1,true)}
if room=rm_main_game {audio_stop_all() audio_play_sound(bgm_mining,1,true)}
//if room=rm_story_default {audio_stop_all() audio_play_sound(bgm_mysterious,1,true)}
}