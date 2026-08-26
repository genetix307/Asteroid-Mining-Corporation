//Fall down screen
y+=5

//Check Controller button click
if input_a() {
alarm[0]=2	
}

//Reset position if offscreen
if y>room_height+50 {
x=random(room_width)
y=-50
}