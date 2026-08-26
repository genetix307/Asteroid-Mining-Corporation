depth=-10010

questsTotal=79
questsCompleted=check_quests_completed()

//Create Quest buttons
var startX = 210;
var startY = 90;
var startID=1;

if room=rm_quests2 {startID=31}
if room=rm_quests3 {startID=61}

var rows = 10;
var xSpace = 329;
var ySpace = 70;
var genID=0

for (var i = 0; i < 30; i++)
{
    var col = floor(i / rows);
    var row = i mod rows;

    var xx = startX + col * xSpace;
    var yy = startY + row * ySpace;

	if i+startID<=questsTotal {
    var inst = instance_create_depth(xx, yy, depth, btn_quests);
    inst.myID = i+startID;
	}
}