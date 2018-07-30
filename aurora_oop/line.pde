class Line { 
  color c;
  float x;
  float y;
  float w;
  float negSpeed;
  float speed;
  
  Line(color tempC, float tempW, float tempX, float tempY, float tempNegSpeed, float tempSpeed) { 
    c = tempC;
    w = tempW;
    y = tempY;
    x = tempX;
    negSpeed = tempNegSpeed;
    speed = tempSpeed;
  }

  void display() {
    len = random(width/15, width/5);
    strokeWeight(w);
    stroke(c);
    line(x, y, x, y + len);
  }

  void move() {
    x = x + random(negSpeed, speed);
    if (x > width || x < 0) {
      d = -d;
    }
    y = y + random(negSpeed, speed);
    if (y+len > height || y < 0) {
      y = 0;
    }
  }
}