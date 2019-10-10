void setup()
{
	
	size(500,500);
	textAlign(CENTER,CENTER);
	noLoop();
}
void draw()
{
	background(190);
	int numDots = 0;
	for(int x = 50; x<300; x+=50){
		for(int y = 20;y<300;y+=50){
			Die dic = new Die (x,y);
			dic.roll();
			dic.show();
			numDots = numDots + dic.dots;
		}
	}
	text("There are " + numDots + " dots.", 150,350);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int dots;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		
		roll();
	}
	void roll()
	{ 
		dots = (int)(Math.random()*6+1);

	}
	void show()
	{
		fill(255);
		rect(myX,myY, 50,50);
		fill(0);
		if(dots==1){
			ellipse(myX+25,myY+25,10,10);

		}

		if(dots == 2){
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
		if(dots ==3){
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
		if(dots==4){
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);
		}
		if(dots==5){
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+25,myY+25,10,10);
		}


		if(dots == 6){
			ellipse(myX+25,myY+35,10,10);
			ellipse(myX+10,myY+35,10,10);
			ellipse(myX+40,myY+35,10,10);
			ellipse(myX+10,myY+15,10,10);
			ellipse(myX+25,myY+15,10,10);
			ellipse(myX+40,myY+15,10,10);

		}
	}
}
