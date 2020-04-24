//open the cpu's card
for(var i = 0; i < global.maxCardsInDeck; i ++){
	var card = ds_list_find_value(deck,i);
	if(card.open == true){
		card.faceUp = true;
		audio_play_sound(snd_glass_break,99,false);
		//create explosion effect when open card
		instance_create_layer(card.x,card.y,"Instances",obj_card_explode);
	}
}
//get score
obj_gameManager.alarm[0] = 50;
