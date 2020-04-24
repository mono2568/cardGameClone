//check if the trash can is moving and move the trash can if not
if(collisionCount < 1){
if(time < duration){
	
	image_xscale = ease_in_out_quint(time,startScaleX,destScaleX-startScaleX,duration);
	image_yscale = ease_in_out_quint(time,startScaleY,destScaleY-startScaleY,duration);
		
	time ++;
} else {
	
	var tempStartScaleX = startScaleX;
	startScaleX = destScaleX;
	destScaleX = tempStartScaleX;
	var tempStartScaleY = startScaleY;
	startScaleY = destScaleY;
	destScaleY = tempStartScaleY;
	time = 0;
	countEase++;
	//make sure that the trash can only moves once per collision
	if(countEase == 2){
		collisionCount ++;
		countEase = 0;
	}

}
}
