float t=3;
float yoff=0;
float x;
float y;
void setup(){
size(800,800);
background(0);
  
}

void draw(){
  background(0);
  translate(400,400);
  beginShape();
  float xoff=0; 
  stroke(255);
  strokeWeight(4);
  for (float a=0;a<24*PI;a+=0.05){
   fill(yoff*4,0,100);
   float n=noise(xoff,yoff);
   float r=sin(a)*map(n,0,1,50,150);
   float r1=cos(a)*map(n,0,1,50,150);
   float x=r*(exp(cos(a))-2*cos(4*a)+pow(sin(a/12),5));
   float y=-r1*(exp(cos(a))-2*cos(4*a)+pow(sin(a/12),5));
   xoff+=0.1;
   vertex(x,y);
    }
   endShape();
   stroke(255);
   yoff+=0.03;
   t-=0.04;
  
  }
