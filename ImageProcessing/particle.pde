class particle {
  PVector location;
  PVector velocity;


  particle() {
    location=new PVector(width/2, height/2);
    float a=random(TWO_PI);
    float speed =random(0.01, 0.2);
    velocity=new PVector(16*pow(sin(a), 3)*speed, -(13*cos(a)-5*cos(2*a)-2*cos(3*a)-cos(4*a))*speed);
  }
  void display() {
    color c=artery.get(int(location.x), int(location.y));
    float b=brightness(c);
    float threshold=190;
    //fill(c);
    if (b>threshold) {
      fill(255);
      textSize(15);
      text('a', location.x, location.y);
    } else {
    }
  }
  void update() {
    location.add(velocity);
  }
  void edges() {
    if (location.x<0||location.x>width) {
      velocity.x*=-1;
    }
    if (location.y<0||location.y>width) {
      velocity.y*=-1;
    }
  }
}
