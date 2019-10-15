
void setup()
{
  size (500,500);
  noLoop();
  textAlign(CENTER);
  
}
void draw()
{
  background(192);
  int sum=0;
  for(int x=50;x<=250;x=x+60)
  {
    for(int y=50;y<=250;y=y+60){
      Die theDice = new Die(x,y);
      theDice.show();
      sum=sum+theDice.value;
    }
}
  
  textAlign(CENTER);
textSize(9);
fill(0,0,0);
text(sum +": This is the sum (¬‿¬)",410,30);


}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int value;
  int myX, myY;  
  Die(int x, int y) 
  {
    value=(int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    
    
      
  }
  void show()
  {

    fill(255);
    rect(myX,myY,50,50);
    fill(0);
     if(value==1)
   { 
   ellipse(myX+25,myY+25,10,10);
 }
 if(value==2){
   ellipse(myX+35,myY+35,10,10);
   ellipse(myX+15,myY+15,10,10);
  }
  if(value==3){
    ellipse(myX+40,myY+40,10,10);
   ellipse(myX+10,myY+10,10,10);
   ellipse(myX+25,myY+25,10,10);
  }
  if(value==4){
        ellipse(myX+40,myY+40,10,10);
   ellipse(myX+10,myY+10,10,10);
   ellipse(myX+40,myY+10,10,10);
   ellipse(myX+10,myY+40,10,10);
  }
  if(value==5){
     ellipse(myX+40,myY+40,10,10);
   ellipse(myX+10,myY+10,10,10);
   ellipse(myX+40,myY+10,10,10);
   ellipse(myX+10,myY+40,10,10);
   ellipse(myX+25,myY+25,10,10);
  }
  if(value==6){
 ellipse(myX+40,myY+40,10,10);
   ellipse(myX+10,myY+10,10,10);
   ellipse(myX+40,myY+10,10,10);
   ellipse(myX+10,myY+40,10,10);
   ellipse(myX+10,myY+25,10,10);
   ellipse(myX+40,myY+25,10,10);
  }
}
}
