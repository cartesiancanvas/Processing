particle[] particles=new particle[10000];
PImage artery;

void setup() {
  size(850, 1200);
  artery=loadImage("Dartery.jpeg");
  for (int i=0; i<particles.length; i++) {
    particles[i]=new particle();
  }
}


void draw() {
  background(0);
  for (int i=0; i<particles.length; i++) {
    particles[i].display();
    particles[i].update();
    particles[i].edges();
  }
}
