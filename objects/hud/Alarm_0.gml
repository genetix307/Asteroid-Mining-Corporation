
if hud.game_paused=0 and hud.game_over=0 {
if store.total_runs=0
{
if current_tutorial=0 {
show_tutorial=2.7
alarm[0]=750
tutorial="The Dark Ones minions are approaching the Tower. Grab some arrows and take them out!"
current_tutorial=1
exit
}

if current_tutorial=1 {
show_tutorial=2.7
alarm[0]=750
tutorial="You gain Experience points from taking down enemies, when you Level Up you can choose special new Perks!"
current_tutorial=2
exit
}

if current_tutorial=2 {
show_tutorial=2.7
alarm[0]=1300
tutorial="Enemies drop Gold, you can collect it and use it to upgrade your Towers stats!"
current_tutorial=3
exit
}

if current_tutorial=3 {
show_tutorial=2.7
alarm[0]=800
tutorial="From the Upgrades tab you can Upgrade your Attack Damage, Speed, and much more. Some Upgrades have to be Researched before you can use them."
current_tutorial=4
exit
}

if current_tutorial=4 {
show_tutorial=2.7
alarm[0]=800
tutorial="Try to Survive as long as you can. If overwhelmed, head back to the Castle to rest and plan your strategy!"
current_tutorial=5
exit
}
}

if store.total_runs=1
{
if current_tutorial=0 {
show_tutorial=2.7
alarm[0]=1000
tutorial="Stay sharp, the Dark One will be heading this way in the future. It will not be an easy battle..."
current_tutorial=1
exit
}
}
}

//If paused or gameover
else {alarm[0]=60}