type = 0;	//the card type
faceUp = false;	//face up or not

//variable for ease function
startX = x;
destX = x;
startY = y;
destY = y+150;
duration = 60;
time = 0;
startScaleX = image_xscale;
startScaleY = image_yscale;
destScaleX = image_xscale*1.5;
destScaleY = image_yscale*0.5;
startAngle = image_angle;
destAngle = image_angle+0;

//check the if the card is moved when it is selected
startMove = false;
open = false;
//if the cards are in the player's hands
inHands = false;
goToSetPosition = false;
yPosHands = 0;
chosed = false;
discarded = false;
// store the order of the card
debugNum = 0;