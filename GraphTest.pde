/*
*	GraphTest.pde - Demo of the focus/relax graphs
*
*	To-do:
*	- Add 3rd color to gradient for real
*	- Integrate with BPM
*/

// Sketch dimensions
int WIDTH = 1280;
int HEIGHT = 600;
int GRAPH_W = 600;

boolean playing = true;

// Graphs
RiriGraph relax, focus;

// Images 
PImage bg_focus, bg_relax;

// Setup 
void setup(){ 
	// Sketch setup
	size(WIDTH, HEIGHT); 
	background(0);
	//frameRate(60);
	// Colors
	color veryR = color(13, 255, 234);
	color someR = color(16, 255, 160);
	color neutral = color(255, 220, 73);
	color someF = color(240, 133, 46);
	color veryF = color(255, 34, 184);
	color[] colors_relax = {neutral, someR, veryR};
	color[] colors_focus = {veryF, someF, neutral};
	bg_focus = loadImage("focus_gradient.png");
	bg_relax = loadImage("relax_gradient.png");
	// Graph
	//focus = new RiriGraph(0,0,GRAPH_W,HEIGHT,veryF,neutral,"FOCUS",1);
	focus = new RiriGraph(0,0,GRAPH_W,HEIGHT,bg_focus,"FOCUS",1);
	//relax = new RiriGraph(WIDTH - GRAPH_W,0,GRAPH_W,HEIGHT,neutral,veryR,"RELAX",0);
	relax = new RiriGraph(WIDTH - GRAPH_W,0,GRAPH_W,HEIGHT,bg_relax,"RELAX",0);
} 

void draw() {
	if (playing) {
		background(0);
		focus.draw();
		//image(bg_focus, 0, 0, WIDTH/2, HEIGHT);
		relax.draw();
	}	
}

void keyPressed() {
	if (key == ' ') {
		playing = !playing;	
	}	
}
