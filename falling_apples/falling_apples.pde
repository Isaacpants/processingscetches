int y = 20;
int y1 = -10;
int y2 = -60;
int y3 = -120;
int y4 = -180;
int y5 = -230;
int speedx=1;
void setup(){
size(1000,1000);

}void draw(){

  if(y==1000){
  y=0;
  }  if(y1==1000){
  y1=0;
  }if(y2==1000){
  y2=0;
  }if(y3==1000){
  y3=0;
  }
  if(y4==1000){
  y4=0;
  }if(y5==1000){
  y5=0;
  }
background(0,0);

rect1();
rect2();
rect3();
rect4();
rect5();
rect6();
y++;
y1++;
y2++;
y3++;
y4++;
y5++;
fill(255,255,255);
  rect(speedx,995,100,10);
}
void rect1(){
  fill(255,0,0);
rect(80,y,10,10);
}void rect2(){
  fill(255,0,0);
rect(160,y1,10,10);
}void rect3(){
  fill(255,0,0);
rect(240,y2,10,10);
}void rect4(){
  fill(255,0,0);
rect(320,y3,10,10);
}void rect5(){
  fill(255,0,0);
rect(400,y4,10,10);
}void rect6(){
  fill(255,0,0);
rect(480,y5,10,10);}

void keyPressed()
{
  
    if (keyCode == RIGHT)
    {
      speedx+=14;
    } else if (keyCode == LEFT)
    {
      speedx+=-14 ;
    }
  
}