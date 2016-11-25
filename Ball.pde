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
    int xb1=bar1.getX() , xb2=bar2.getX() , yb1=bar1.getY() , yb2=bar2.getY() , wb1=bar1.getwd() , hb1=bar1.getht() , hb2=bar2.getht() , wb2=bar2.getwd();
    if(x==xb2-size/2) {
      if(y>yb2 && y<yb2+hb2) { 
        dx*=-1;
      }
    }
    else if(x>xb2-size/2) {
      if(Math.sqrt((x-xb2)*(x-xb2)+(y-yb2)*(y-yb2))<=size/2) {
        dx*=-1;
        dy*=-1;
      }
      else if(Math.sqrt((x-xb2)*(x-xb2)+(y-yb2-hb2)*(y-yb2-hb2))<=size/2) {
        dx*=-1;
        dy*=-1;
      }
    }
    if(x==xb1+wb1+size/2) {
      if(y<yb2+hb2 && y>yb2) {
        dx*=-1;
      }
    }
    if(x<xb1+wb1+size/2) {
      if(Math.sqrt((x-xb1-wb1)*(x-xb1-wb1)+(y-yb1)*(y-yb1))<=size/2) {
        dx*=-1;
        dy*=-1;
      }
      else if(Math.sqrt((x-xb1-wb1)*(x-xb1-wb1)+(y-yb1-hb1)*(y-yb1-hb1))<=size/2) {
        dx*=-1;
        dy*=-1;
      }
    }
    if(x>640-size/2){
      dx*=-1;
    }
    else if(x<size/2) {
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