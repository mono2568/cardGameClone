// gradually decrease the transparancy
if(timeW < durationW){
	image_alpha = ease_out_quad(timeW,startAlpha,destAlpha-startAlpha,durationW);
	timeW ++;
} else {
	// destroy the shadow after a certain amount of time
	instance_destroy();
}

