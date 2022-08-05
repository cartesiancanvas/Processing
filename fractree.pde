void setup() {
  //size(1024, 1024);
  fullScreen();
  //background(255);
  //frameRate(1);
}
void draw() {
  background(164,219,232);
  stroke(0);
  frac_tree(width/2, height, 90, 170, 170, 10);
  noLoop();
}

void frac_tree(float x, float y, float angle, float size, float max_size, float stroke) {
  float x1=x;
  float y1=y;
  float x2=x1+cos(radians(angle))*size;
  float y2=y1-sin(radians(angle))*size;
  float first_term=max_size;
  float cd=15;
  stroke(118,92,72, stroke*25); //118 ,92 ,72
  strokeWeight(stroke);
  line(x1, y1, x2, y2);
  size=size-cd;
  stroke=stroke-0.9;
  if (size>1) {
    frac_tree(x2, y2, angle-random(10, 35), size, max_size, stroke);
    frac_tree(x2, y2, angle+random(10, 35), size, max_size, stroke);
    if (random(1)<0.5) {
      if (random(2)<0.6) {
        frac_tree(x2, y2, angle-random(10, 30), size, max_size, stroke);
      } else {
        frac_tree(x2, y2, angle+random(10, 30), size, max_size, stroke);
      }
    }
  }

  if (size==first_term - (ceil(((first_term-1)/cd)+1)-1)*cd) {
    noStroke();
    fill(255, 183, 197, 200); //180,20,80
    ellipse(x2, y2, 10, 10);
  }
}
