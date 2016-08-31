int startY = 0;
int startX = (int)(Math.random()*600);
int endY = 150;
int endX = 0;

int startY2 = 0;
int startX2 = (int)(Math.random()*600);
int endY2 = 150;
int endX2 = 0;

int startY3 = 0;
int startX3 = (int)(Math.random()*600);
int endY3 = 150;
int endX3 = 0;

int personCenterX = 300;
int personCenterY = 550;

void setup(){

	size(600,600);
    strokeWeight(4);
    background(0);
}

void draw(){
	
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
	while (endY<= 700){
		endX = startX + (int)(Math.random()*18) - 9;
		endY = startY + (int)(Math.random()*9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;

		endX2 = startX2 + (int)(Math.random()*18) - 9;
		endY2 = startY2 + (int)(Math.random()*9);
		line(startX2, startY2, endX2, endY2);
		startX2 = endX2;
		startY2 = endY2;

		endX3 = startX3 + (int)(Math.random()*18) - 9;
		endY3 = startY3 + (int)(Math.random()*9);
		line(startX3, startY3, endX3, endY3);
		startX3 = endX3;
		startY3 = endY3;

		ellipse(personCenterX, personCenterY, 100, 100);



	}
}
// void mousePressed(){
// 	stroke(255,255,255);
// 	fill(255, 255, 255, 100);
// 	rect(0, 0, 600, 600);
// }

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
        startY = 0;
		startX = (int)(Math.random()*600);
		endY = 150;
		endX = 0;

		startY2 = 0;
		startX2 = (int)(Math.random()*600);
		endY2 = 150;
		endX2 = 0;

		startY3 = 0;
		startX3 = (int)(Math.random()*600);
		endY3 = 150;
		endX3 = 0;
		background(0);
		personCenterX -= 5;
		
    } else if (keyCode == RIGHT) {
  		startY = 0;
		startX = (int)(Math.random()*600);
		endY = 150;
		endX = 0;

		startY2 = 0;
		startX2 = (int)(Math.random()*600);
		endY2 = 150;
		endX2 = 0;

		startY3 = 0;
		startX3 = (int)(Math.random()*600);
		endY3 = 150;
		endX3 = 0;
		background(0);
    } 
  } else {
    
  }
}

