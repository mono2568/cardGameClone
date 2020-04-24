

with(other){
	image_alpha =  0;
	image_angle = 0;
	image_xscale = 1;
	image_yscale = 1;
	if(trashSound == false){
		audio_play_sound(snd_trash,99,false);
		trashSound = true;
		obj_trash.startMove = true;
		obj_trash.collisionCount = 0;
	}
}