
// deal three cards each to the player
if(global.i < global.numOfHands*2){
	
	//move the cards
	var card = ds_list_find_value(deck,global.cardNow);
	// set the value of the variables for the ease function
	card.startX = x;
	card.destX = x +50+200*(global.cardNow%3 + 1);
	card.startY = y;
	card.destY = y -200 + floor(global.i/3)*550;
	card.trashSound = false;
	if(global.i > 2){
		//opent the card if it's the player's card
		card.open = true;
	}
	//activate the card movement
	audio_play_sound(snd_shot,99,false);
	card.startMove = true;
	global.cardNow ++;
	global.i++;
	alarm[0] = 30;
		
}else{
	global.i = 0;
	//open the player hand
	alarm[1] = 30;
}