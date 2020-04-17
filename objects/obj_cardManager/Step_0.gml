//function to shuffle cards
if(global.startDeal == true){
	
	// to make sure that it will deal in a certain pace
	if(alarm[0] < 0){
		alarm[0] = 30;
	}
	
	global.startDeal = false;
}
