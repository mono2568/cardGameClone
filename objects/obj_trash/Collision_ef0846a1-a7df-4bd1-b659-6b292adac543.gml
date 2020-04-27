with(other){
	//change the alpha value of the card to 0 when collide with card
	image_alpha =  0;	
	image_angle = 0;
	image_xscale = 1;
	image_yscale = 1;
	if(trashSound == false){
		//make sure that the sound only plays once
		audio_play_sound(snd_trash,99,false);
		trashSound = true;
		obj_trash.startMove = true;
		obj_trash.collisionCount = 0;
	}
}