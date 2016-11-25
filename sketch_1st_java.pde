int x=100;
int y=50;
void setup() {
  size(640 , 480);
}
void draw() {
  background(155);
  ellipse(x, y , 50 ,100);
  x=(x+1)%640+1;
  
  
}