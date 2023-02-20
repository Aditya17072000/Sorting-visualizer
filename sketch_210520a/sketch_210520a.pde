float circle;
float speed=10;
void setup(){
  size(640,360);
  circle = 20;
}
void draw(){
  background(100);
  fill(125);
  stroke(255);
  ellipse(circle,height/2,32,32);
  circle= circle + speed;
  if(circle > width || circle < 0){
    speed=speed* -1/2;
  }
  
}
