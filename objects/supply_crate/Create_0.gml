image_speed=0
opened=0

myGold=round((20+random(store.current_stage))*store.tier)
myGems=round(store.tier*random(5))
myArrow=choose("Basic Arrow","Precision Arrow","Flame Arrow","Frost Arrow","Heavy Arrow","Power Arrow","Vampiric Arrow","Bomb Arrow")
myArrowCount=10+round(random(50))

//Card - Supply Drop
if store.card[5]>=1 
{
myGold+=round(random(5*store.card[5]))
myGems+=round(random(store.card[5]))
myArrowCount+=round(random(3*store.card[5]))
}

if store.auto_crate=1 {alarm[0]=90}

hud.crate_count+=1
picked=0