function check_lifesteal(){
tmpLifesteal=store.lifesteal_chance
if store.status_vampirefang>0 {tmpLifesteal+=5}
if hud.current_arrow="Vampiric Arrow" {tmpLifesteal+=10}
return tmpLifesteal
}