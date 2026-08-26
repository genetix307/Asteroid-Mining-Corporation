function check_quests_completed(){
tmpCompleted=0

//Quests
for (var i = 0; i < 999; ++i) {
  if store.quests[i]=1 {tmpCompleted+=1}
} 

return tmpCompleted
}