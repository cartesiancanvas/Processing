float r1=150;
float r2=150;
float r3=150;
float m1=40;
float m2=40;
float m3=40;
float a1=0;
float a2=0;
float a3=0;
PGraphics canvas;
float px2;
float py2;
float px3;
float py3;
float t;



void setup() {
  size(2000,1200);
  canvas=createGraphics(2000,1200);
  canvas.beginDraw();
  canvas.background(0);
  colorMode(HSB);
  canvas.endDraw();
}
void draw(){
 image(canvas,0,0);
 stroke(0);
 strokeWeight(2);
  
 translate(1000,500);
 float x1=r1*sin(a1);
 float y1=r1*cos(a1);
 stroke(255);
 line(0,0,x1,y1);
 fill(255);
 ellipse(x1,y1,m1,m1);
 
 float x2=x1+r2*sin(a2);
 float y2=y1+r2*cos(a2);
 
 stroke(255);
 line(x1,y1,x2,y2);
 fill(255);
 ellipse(x2,y2,m2,m2); 
 
 float x3=x2+r3*sin(a3);
 float y3=y2+r3*cos(a3);
 stroke(255);
 line(x2,y2,x3,y3);
 fill(255);
 ellipse(x3,y3,m3,m3);
 
 canvas.beginDraw();
 canvas.translate(1000,500);
 canvas.strokeWeight(2);
 canvas.stroke(t,100,150);
 if(frameCount>1){
 canvas.line(px3,py3,x3,y3);
 canvas.stroke(255);
 canvas.line(px2,py2,x2,y2);
 }
 canvas.endDraw();
 a1+=0.09;
 a2+=0.007;
 a3+=0.3;
 t+=1;
 px2=x2;
 py2=y2;
 px3=x3;
 py3=y3; 
 //saveFrame("pendulumLocus3_####.png");
  
    
}
