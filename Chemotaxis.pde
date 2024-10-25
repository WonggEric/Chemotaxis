chemotaxis[] bacteria = new chemotaxis[50];
void setup(){
  size(1000,1000);
  for(int i = 0; i<bacteria.length;i++){
    bacteria[i] = new chemotaxis((int)(Math.random()*500), (int)(Math.random()*500), color(115,216,60));
  }
}

void draw(){
  background(255);
  for(int i = 0; i<bacteria.length;i++){
    bacteria[i].show();
    bacteria[i].jitter();
    bacteria[i].towardsMouse();
  }
}

class chemotaxis{
  int myX,myY,myC;
  chemotaxis(int x, int y, int c){
    myX = x;
    myY = y;
    myC = c;
    }
  void jitter(){
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
  void towardsMouse(){
    if(mouseX>myX){
      myX += (int)(Math.random()*3);
    }else{
      myX -= (int)(Math.random()*3);
  }
    if(mouseY>myY){
      myY += (int)(Math.random()*3);
    }else{
      myY -= (int)(Math.random()*3);
    }
  }
  void show(){
    fill(myC);
    ellipse(myX,myY,15,15);
  }
}

