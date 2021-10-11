import processing.video.*;
particle[] particles=new particle[5500];
String[] cameras = Capture.list();
Capture video;
void setup() {
  size(640, 480);
  background(0);
  for (int i=0; i<particles.length; i++) {
    particles[i]=new particle();
  }
  printArray(Capture.list());
  video=new Capture(this, 640, 480, 30);
  video.start();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
  } else {
    println("Available cameras:");
    for (int cameraIndex = 0; cameraIndex < cameras.length; cameraIndex++) {
      println(cameras[cameraIndex]);
    }
  }
}
void captureEvent(Capture video) {
  video.read();
}

void draw() {
  //background(0);
  keyPressed();
}
void keyPressed() {
  if (key == 'q') {
    for (int i=0; i<particles.length; i++) {
      particles[i].display();
      particles[i].update();
      particles[i].edges();
    }
  }
}
