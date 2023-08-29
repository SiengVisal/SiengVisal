void visal(float x,float y, float d){
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
