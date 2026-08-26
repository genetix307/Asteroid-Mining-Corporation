function check_luck(){
tmpLuck=store.luck
if store.status_luckyclover>0 {tmpLuck+=5}
return tmpLuck
}