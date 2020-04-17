//prepare to restart the game
if(global.i < global.maxCardsInDeck){

	var card = ds_list_find_value(deck,global.i);
	card.startX = card.x;
	card.destX = x;
	card.startY = card.y;
	card.destY = y;
	card.faceUp = false;
	card.open = false;
	audio_play_sound(snd_cardDeal,99,false);
	card.startMove = true;
	card.goToSetPosition = false;
	card.discarded = false;
	card.trashSound = false;
	card.inHands = false;
	global.gameEnd = false;
	global.cardNow = 0;
	global.countDiscard = 0;
	//card.faceUp = true;
	global.i++;
	alarm[5] = 5;		
}else{
	//put the cards back to the initial position
	alarm[6] = 100;
	global.i = 0;
}