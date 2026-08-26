function check_speed(){
//tmpSpeed=61-store.attack_speed
tmpSpeed = max(6,120/(1+store.attack_speed))
if tmpSpeed<=0 {tmpSpeed=1}
return tmpSpeed
}