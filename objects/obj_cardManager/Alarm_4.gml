//discard cards
if(global.startDiscard == true){
for(var i = 0; i < global.maxCardsInDeck; i ++){
	
	var card = ds_list_find_value(deck,i);
	//fist discard the cards which was used
	if(card.chosed == true){
		
		card.chosed = false;
		card.startX = card.x;
		card.destX = discardPosX;
		card.startY = card.y;
		card.destY = 220+card.debugNum;
		card.faceUp = true;
		card.open = false;
		audio_play_sound(snd_cardDeal,99,false);
		card.startMove = true;
		card.discarded = true;
		alarm[4] = 30;
		global.countDiscard ++;
		break;
	}
	if(global.maxCardsInDeck-1 == i){
		global.alarm4Loop = true;
	}
	
}

if(global.alarm4Loop == true){
	//next discard the rest of the cards whcih was dealt
	for(var i = global.cardNow-6; i < global.cardNow;i++){
		var card = ds_list_find_value(deck,i);
		if(card.discarded == false){
		
			card.faceUp = true;
			card.startX = card.x;
			card.destX = discardPosX;
			card.startY = card.y;	
			card.destY = 220+card.debugNum;
			
			card.open = false;
			audio_play_sound(snd_cardDeal,99,false);
			card.startMove = true;	
			card.discarded = true;
			alarm[4] = 30;
			global.countDiscard ++;
			break;
		}
		
	}
}

}
if(global.countDiscard == 6){
	//distriute new cards when finished discarding all the cards
	global.startDiscard = false;
	global.alarm4Loop = false;
	if(global.gameEnd == false){
		//deal the cards
		alarm[0] = 100;	
		global.countDiscard = 0;
		if(global.cardNow == 18){
			// game end when all the cards are dealt
			global.gameEnd = true;
		}
	}else if(global.gameEnd == true){
		if(alarm[5] <0){
			//prepare to restart the game
			alarm[5] = 60;
		}
	}
}