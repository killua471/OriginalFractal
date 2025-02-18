void setup(){
  size(500,500);

}

void draw(){
  rose(width/2,height/2,500,10);
}

void rose(int x, int y, float n, int count){
  if(n<=10){
    ellipse(x,y,n,n);
  }else{
    fill(255-count,0,0);
    ellipse(x+n/4,y,n/2,n/2); //right
    ellipse(x+n/5,y+n/5,n/2,n/2); //bottom right
    ellipse(x,y+n/4,n/2,n/2); // bottom
    ellipse(x-n/5,y+n/5,n/2,n/2); //bottom left
    ellipse(x-n/4,y,n/2,n/2); //left
    ellipse(x-n/5,y-n/5,n/2,n/2); //top left
    ellipse(x,y-n/4,n/2,n/2); // top
    ellipse(x+n/5,y-n/5,n/2,n/2); //top right
    //fill(0,0,255);
    arc(x+n/4,y,n/2,n/2, PI+QUARTER_PI, TWO_PI);
    arc(x+n/5,y+n/5,n/2,n/2,PI+QUARTER_PI, TWO_PI);
   
    rose(x,y,n/1.5,count+20);
  }
}




