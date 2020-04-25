//put the cards back to the initial position
for(var counter = 0; counter < global.maxCardsInDeck; counter++){
	//show_debug_message("create card");
	var newCard = ds_list_find_value(deck,counter);
	newCard.image_alpha = 1;
	
	newCard.depth = counter+60;
	newCard.x = x;
	newCard.y = global.startY + counter*2;
	newCard.debugNum = counter;

}
//remove hand
alarm[7] = 100;
//distribute the cards
alarm[0] = 200;