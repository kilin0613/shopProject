function preventSpacebar() {
	
	var keyCode = event.keyCode;
	
	if (keyCode == 32) {
		event.returnValue = false;
	}
}