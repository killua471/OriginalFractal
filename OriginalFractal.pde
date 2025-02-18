void setup() {
  size(500,500);
  background(0);
}
 void draw() {
  fractal(250,250,500,10);
}
public void mousePressed() {

}
public void fractal(int x, int y, float n, int count) {
  if (n < 10)  {
    ellipse(x,y,n,n);
  }
  else {
     fill(255-count,0,0);
    ellipse(x-n/4,y,n/2,n/2);
    ellipse(x-n/5.5,y-n/5.5,n/2,n/2);
    ellipse(x,y-n/4,n/2,n/2);
    ellipse(x+n/5.5,y-n/5.5,n/2,n/2);
    ellipse(x+n/4,y,n/2,n/2);
    ellipse(x+n/5.5,y+n/5.5,n/2,n/2);
    ellipse(x,y+n/4, n/2, n/2);
ellipse(x-n/5.5,y+n/5.5,n/2,n/2);
    fractal(x,y,n/1.5,count+20);
  }
}
