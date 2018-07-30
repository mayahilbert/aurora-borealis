Line line1;
Line line2;
Line line3;
Line line4;
Line line5;
Line line6;

//speed of lines
float defspeed;
//length of lines
float len;
//d is used to determine the direction of the line 
float d;
//strokeweight
float defw;

void setup() {
  smooth();
  background(0);
  //defines canvas size to match the size of display
  size(displayWidth, displayHeight);

  //define variables for speed
  defspeed = 30;
  d = 3;
  defw = 0.1;
  
  //neon green
  line1 = new Line(color(41, 242, 120), defw, 0, height/10, -defspeed+d, defspeed); 
  //purple
  line2 = new Line(color(120, 6, 201), defw, 0, height/4, -defspeed+d, defspeed);
  //lavender
  line3 = new Line(color(134, 118, 255), defw, 0, height/1.2, -defspeed+d, defspeed);
  //pink
  line4 = new Line(color(120, 20, 100), defw, width, height/20, -defspeed-d, defspeed);
  //blue
  line5 = new Line(color(1, 99, 100), defw, width, height/4, -defspeed-d, defspeed);
  //teal
  line6 = new Line(color(0, 229, 190), defw, width, height/2, -defspeed-d, defspeed);
}

void draw() {
  line1.display();
  line1.move();

  line2.display();
  line2.move();

  line3.display();
  line3.move();

  line4.display();
  line4.move();

  line5.display();
  line5.move();

  line6.display();
  line6.move();
}