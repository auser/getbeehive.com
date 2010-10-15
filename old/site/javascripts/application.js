var scrollSpeed = 1; 		// Speed in milliseconds
var step = 1; 				// How many pixels to move per step
var current = 0;			// The current pixel row
var imageWidth = 2247;		// Background image width
var headerWidth = 1280;		// How wide the header is.

//The pixel row where to start a new loop
var restartPosition = -(imageWidth - headerWidth);

function scrollBg(){
	//Go to next pixel row.
	current -= step;
	
	//If at the end of the image, then go to the top.
	if (current == restartPosition){
		current = 0;
	}
	
	//Set the CSS of the header.
	$('#header').css("background-position",current+"px 0");
}

//Calls the scrolling function repeatedly
var init = setInterval("scrollBg()", scrollSpeed);
