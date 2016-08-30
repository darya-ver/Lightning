int startX= 150;
int startY = 0;
int endX = 150;
int endY = 0;

int startX2= 150;
int startY2 = 0;
int endX2 = 150;
int endY2 = 0;

int startX3= 150;
int startY3 = 0;
int endX3 = 150;
int endY3 = 0;

void setup(){
  size(300,300);
  strokeWeight(4);
  background(150);
}

void draw(){
	
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	while (endY<= 400){
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
	}
}
void mousePressed(){
	startY = mouseY;
	startX = (int)(Math.random()*300);
	endY = 150;
	endX = 0;

	startY2 = 0;
	startX2 = (int)(Math.random()*300);
	endY2 = 150;
	endX2 = 0;

	startY3 = 0;
	startX3 = (int)(Math.random()*300);
	endY3 = 150;
	endX3 = 0;

	background(150);
}

