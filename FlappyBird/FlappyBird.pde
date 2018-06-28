int byv = 30;
int g = 1;
  int x = 250;
  int y = 250;
  int x1 = 275;
  int y1 = 0;
   int upperPipeHeight = (int) random(100, 400);
  int lowerPipeHeight = (int) random(100, 400);
  void setup(){
size(500, 500);

background(0, 255, 44);


}
void draw(){ 
background(0, 255, 44);
fill(178, 0, 255);
stroke(255, 3, 226);
teleportPipes();
 fill(0, 0, 255);
rect(x1, y1, 50, upperPipeHeight);
rect(x1, 400, 50, lowerPipeHeight);
fill(255,0,0);
rect(0,495 ,500 ,50 );
fill(127,127,127);
ellipse(x, y, 20, 20);


if(intersectsPipes()== false){

x1-=2;

}

y+=4;

if(mousePressed==true){

y-=6 ;
}
}
 void teleportPipes(){
 if(x1<=0){
    

 x1 = 500;
  upperPipeHeight = (int) random(100, 400);
   lowerPipeHeight = (int) random(100, 400);
 }
 }
 boolean intersectsPipes() { 
     if (y < upperPipeHeight && x > x1 && x < (x1+50)){
          return true; 
     }
     else if (y>lowerPipeHeight && x > x1 && x < (x1+50)) {
          return true; }
     else { return false; }
}
 
 
 
 
 