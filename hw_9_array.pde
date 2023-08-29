float [] a, b, c, vx, vy;
void setup() {
  size(1000, 800);
  a = new float[8];
  b = new float[8];
  c = new float[8];
  vx = new float[8];
  vy = new float[8];
  for (int i=0; i<8; i++) {
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(50, 100);
    vx[i] = random(5,10);
    vy[i] = random(5,10);
  }
}// setup()
void draw() {
  background(0, 255, 255);
  for (int i=0; i<8; i++) {
      a[i] += vx[i];
      b[i] += vy[i];
      if (a[i]<0 || a[i]>width) vx[i] = -vx[i];
      if (b[i]<0 || b[i]>height) vy[i] = -vy[i];
    if (i<5) avocado(a[i], b[i], c[i]);
    else eye(a[i], b[i], c[i]);
  } // for
} // draw()
void avocado(float x,float y, float d){
  fill(50,205,50);
  ellipse(x+d+12,y+d,d+d,d+d+4*10);
  fill(173,255,47);
  ellipse(x+d+6,y+d,d*2-16,d+d+26);
  fill(0);
  circle(x+d-30,y+30,d/5);
  circle(x+d+30,y+30,d/5);
  noFill();
  arc(x+d,y+30,d/5,d/5,0,PI);
  fill(139,69,19);
  circle(x+d-10,y+d+20,d);
}
void eye(float x, float y, float d) {
  //eye
  fill(2555, 255, 255);//white
  ellipse(x, y-d, d, d*2);
  ellipse(x+d, y-d, d, d*2);

  fill(255, 255, 0);//yellow
  circle(x-5*4, y-d, d-5*2*4);
  circle(x+d-5*4, y-d, d-5*2*4);

  fill(0, 0, 0);//black
  circle(x-d*0.25, y-d-0.5, d/2);
  circle(x+d*0.75, y-d-0.5, d/2);

  fill(255, 255, 255);
  circle(x-d*0.40, y-d-1.25, 20);
  circle(x+d*0.60, y-d-1.25, d/5);
  fill(255);
}
