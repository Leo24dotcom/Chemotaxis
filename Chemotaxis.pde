Bacteria [] bob;
hole stew;
Star [] meb;
void setup()
{
 size(500,500);
 bob = new Bacteria[120];
 for(int i  = 0; i < bob.length; i++){
 bob[i] = new Bacteria(); 
 }
 stew = new hole(250,250);
 meb = new Star[200];
 for(int i = 0; i < meb.length; i++){
  meb[i] = new Star(); 
 }
}

void draw()
{
  background(100,100,100);
  for(int i = 0; i < bob.length; i++)
  {
   bob[i].walk();
   bob[i].show();
   while(dist(bob[i].myX,bob[i].myY,stew.myX,stew.myY) <= (int)(Math.random()*50)+100){
      if(mouseX > bob[i].myX){
        bob[i].myX = bob[i].myX +(int)(Math.random()*5)-1;
      }
      else
        bob[i].myX = bob[i].myX +(int)(Math.random()*5)-3;
      if(mouseY > bob[i].myY){
        bob[i].myY = bob[i].myY +(int)(Math.random()*5)-1;
      }
      else
        bob[i].myY = bob[i].myY + (int)(Math.random()*5)-3;
  }
  }
  stew.expand();
  stew.show();
  text("Do not go near sun for obvious reasons",150,400);
  text("sun",250,250); 
  for(int i = 0; i < meb.length; i++)
  {
   meb[i].show();
  }
}

class Bacteria
{
 int myColor,myX,myY;
 Bacteria()
 {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
   myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 }
 void walk(){
  if(myX <= 300){
   myX = myX + (int)(Math.random()*3);
}
  else myX = myX - (int)(Math.random()*3);
  if(myY <= 250){
   myY = myY + (int)(Math.random()*3);
  }
  else myY = myY - (int)(Math.random()*3);
 }
 void show()  
{
  fill(myColor);
  ellipse(myX,myY,40,40);
}
}
class hole{
  int mySize, myX,myY,myColor;
  hole(int x, int y){
   mySize = 20;
   myX = x;
   myY = y;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 }
 void expand(){
   mySize += 0;
 }
 
 void show(){
  fill(254,255,0);
  ellipse(250,250,60,60);
  fill(0,0,0);
  ellipse(mouseX,mouseY,mySize,mySize);
 }
}
class Star
 {
  int myX,myY;
  Star()
  {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
  }
  void show()
  {
   fill(254,255);
   ellipse(myX,myY,5,5); 
  }
 }
