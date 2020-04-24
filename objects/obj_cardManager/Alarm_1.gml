// open the cards
for(var i = 0; i < global.maxCardsInDeck; i ++){
	var card = ds_list_find_value(deck,i);
	if(card.open == true){
		audio_play_sound(snd_glass_break,99,false);
		card.startXW = card.x;
		card.startYW = card.y;
		card.destXW = card.x;
		card.destYW = card.y - 150;
		card.faceUp = true;
		card.inHands = true;
		card.yPosHands = card.destY;
		//create explosion effect when open card
		instance_create_layer(card.x,card.y,"Instances",obj_card_explode);
		card.open = false;
	}
}

//start selecting the card
global.isPicking = true;