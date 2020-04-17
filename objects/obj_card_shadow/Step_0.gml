if(timeW < durationW){
	//x = ease_in_out_quint(timeW,startXW,destXW-startXW,durationW);
	//y = ease_in_out_quint(timeW,startYW,destYW-startYW,durationW);
	//image_xscale = ease_in_out_quint(timeW,startScaleXW,destScaleXW-startScaleXW,durationW);
	//image_yscale = ease_in_out_quint(timeW,startScaleYW,destScaleYW-startScaleYW,durationW);
	//image_angle = ease_in_out_quint(timeW,startAngleW,destAngleW-startAngleW,durationW);
	image_alpha = ease_out_quad(timeW,startAlpha,destAlpha-startAlpha,durationW);
	timeW ++;
} else {
	instance_destroy();
}

