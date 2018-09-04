int cx = 0;
int x = 900;
int y = 900;
Car car= new Car();
Car car1= new Car();
Car car2= new Car();
Car car3= new Car();
class Car{
  int carX = 0;
  int carY = 200;
  int carSize= 40;
  int carSpeed = 8;
  int getX(){
  return(x);
  }int getY(){
  return(y);
}int getSize(){
  return(carSize);
}
}

void setup(){
size(1000,1000);
 
display();

display();
car1();
}void draw(){
if (cx>=1000){
cx=0;
}
if(intersects.equals(true)){
}
barrier();
  intersects(car);
 background(0,0,0);
  fill(0,255,19);
ellipse(x,y,50,50);
cx+=8;
car();
display();
car1();

keyPressed();

fill(219,0,0);
}void display() 
{
      fill(219,0,0);
      stroke(0,255,18);
      rect(cx , 500, 100, 50);
}void car(){
fill(219,0,0);
      stroke(0,255,18);
      rect(cx , 200, 100, 50);

}void car1(){
fill(219,0,0);
      stroke(0,255,18);
      rect(cx , 400, 100, 50);

}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  y-=5;
            }
            else if(keyCode == DOWN)
            {
                  y+=5;
            }
            else if(keyCode == RIGHT)
            {
                 x+=5;
            }
            else if(keyCode == LEFT)
            {
                  x-=5 ;
            }
      }
}boolean intersects(Car car) {
      if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}void barrier(){
  if(x>=1000){
 x=999;
  }
}