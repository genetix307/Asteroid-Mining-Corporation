depth=-10010
//set_music()

if !audio_is_playing(bgm_title)
{
audio_stop_all()
audio_play_sound(bgm_title,1,true)
}