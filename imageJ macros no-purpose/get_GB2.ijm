macro "BG2_thr"{
	newImage("Untitled", "8-bit black", 100, 100, 1);
	run("Salt and Pepper");
	run("Gaussian Blur...", "sigma=2");
	setAutoThreshold("Default dark no-reset");
	setOption("BlackBackground", true);
	run("Convert to Mask");
}