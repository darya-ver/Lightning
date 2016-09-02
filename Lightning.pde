LightningBolt l1, l2, l3, l4;

PersonAttacked p1;

void setup(){

	size(600,600);
    strokeWeight(4);
    background(0);

    //lightning bolts:
    l1 = new LightningBolt((int)(Math.random()*600),0,150,0);
    l2 = new LightningBolt((int)(Math.random()*600),0,150,0);
    l3 = new LightningBolt((int)(Math.random()*600),0,150,0);
    l4 = new LightningBolt((int)(Math.random()*600),0,150,0);

    //person
    p1 = new PersonAttacked((int)(Math.random()*600), 50);
}

void draw(){
	l1.show();
	l2.show();
	l3.show();
	l4.show();

	p1.show();
}

void keyPressed(){
	l1.reapear();
	l2.reapear();
	l3.reapear();
	l4.reapear();

	p1.move();
}

class LightningBolt{

	int starttX, starttY, enddX, enddY;

	LightningBolt(int x1, int y1, int x2, int y2){
		starttX = x1;
		starttY = y1;
		enddX = x2;
		enddY = y2;
	}

	void show(){

		int[] colorsLightning = {color(153, 153, 153), color(230, 230, 230), color(179, 179, 0), color(255, 255, 51)};

		stroke(colorsLightning[(int)(Math.random()*colorsLightning.length)]);
		while (enddY <= 700){
			enddX = starttX + (int)(Math.random()*18) - 9;
			enddY = starttY + (int)(Math.random()*9);
			line(starttX, starttY, enddX, enddY);
			starttX = enddX;
			starttY = enddY;
		}
	}

	void reapear(){
		if (key == CODED) {
		    if (keyCode == LEFT) {
		        starttY = 0;
				starttX = (int)(Math.random()*600);
				enddY = 150;
				enddX = 0;

				background(0);
				
		    } else if (keyCode == RIGHT) {
		  		starttY = 0;
				starttX = (int)(Math.random()*600);
				enddY = 150;
				enddX = 0;

				background(0);
		    } 
		} else {
		    
		}
	}
	
}

class PersonAttacked{

	int beginX, beginY, sizePerson;

	PersonAttacked(int x, int sizeP){
		beginX = x;
		sizePerson = sizeP;
		beginY = 600 - (sizePerson/2);
	}

	void show(){
		fill(77, 77, 255);
		stroke(77, 77, 255);
		ellipse(beginX, beginY, sizePerson, sizePerson);
	}

	void move(){
		if (key == CODED) {
		    if (keyCode == LEFT) {
		        beginX -= 5;
				
		    } else if (keyCode == RIGHT) {
		  		beginX += 5;

		    } 
		} else {
		    
		}
	}
}