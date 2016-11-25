public class Ball {
  private int y=100;
  private int x=100;
  private int dx=10;
  private int dy=10;
  private int size = 100;
  public Ball(int x , int y , int dx , int dy , int size) {
    this.dx=dx;
    this.dy=dy;
    this.size=size;
    this.x=x;
    this.y=y;
  }
  public void display() {
    ellipse(x , y , size , size);
  }
  public void moveUpDown() {
    if(y>480-size/2) {
      dy*=-1;
    }
    if(y<size/2) {
      dy*=-1;
    }
    y=y+dy;
  }
  public void moveRL(Bar bar1 , Bar bar2) {
    if(x>bar2.getX()-size/2 && y>bar2.getY() && y<bar2.getY()+bar2.getht()) {
      dx*=-1;
    }
    if(x<bar1.getX()+bar1.getwd()+size/2) {
      dx*=-1;
    }
    x=x+dx;
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
  public int getSize() {
    return size;
  }
  public int getDx() {
    return dx;
  }
  public int getDy() {
    return dy;
  }
  public void changeDy() {
    dy*=-1;
  }
  public void changeDx() {
    dx*=-1;
  }
  public void checkCollision(Ball ball) {
    int x1 , y1 , size1;
    x1=ball.getX();
    y1=ball.getY();
    size1=ball.getSize();
    double d=Math.sqrt((x-x1)*(x-x1) + (y-y1)*(y-y1));
    if(d<(size1+size)/2) {
      ball.changeDy();
      ball.changeDx();
      this.changeDy();
      this.changeDx();
    }
  }
}