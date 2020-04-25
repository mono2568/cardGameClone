type = 0;	//the card type
faceUp = false;	//face up or not

//variable for ease function
startX = x;
destX = x;
startY = y;
destY = y;
duration = 60;
time = 0;

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

//variable for ease function
startXW = x;
destXW = x;
startYW = y;
destYW = y+150;
durationW = 60;
timeW = 0;
startScaleXW = image_xscale;
startScaleYW = image_yscale;
destScaleXW = image_xscale*1.5;
destScaleYW = image_yscale*0.5;
startAngleW = image_angle;
destAngleW = image_angle+0;
moveBounce = true;
trashSound = false;
//variable for ease function when click
destXF = x;
startAngleF = image_angle;
destAngleF = image_angle+360;
durationF = 60;
timeF = 0;

