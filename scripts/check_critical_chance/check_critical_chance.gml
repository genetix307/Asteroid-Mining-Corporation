function check_critical_chance(){
tmpCritchance=store.critical_chance
if store.status_focuspill>0 {tmpCritchance+=5}
//if player.super_critical>0 {tmpCritchance+=50}
if hud.current_arrow="Precision Arrow" {tmpCritchance+=10}
return tmpCritchance
}