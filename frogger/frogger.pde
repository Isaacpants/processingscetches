int cx = 0;
int x = 900;
int y = 900;
int score=2;
int speed=0;
int fspeedx=0;
int fspeedy=0;
Car car5= new Car(40,150);
Car car4= new Car(40,250);
Car car= new Car(40,350);
Car car1= new Car(100,800);
Car car2= new Car(1,650);
Car car3= new Car(80,500);

class Car {
  int x;
  int y;
  public Car(int x,int y){
    this.x=x;
    this.y=y;
  }
  
  int carSize= 40;
  int carSpeed = 8;
  int getX() {
    return(x);
  }void setX(int x){
    this.x=x;
  }
  int getY() {
    return(y);
  }void setY(int y){
    this.y=y;
  }
  int getSize() {
    return(carSize);
  }void setSize(int size){
    this.carSize=size;
  }
}

void setup() {
  size(1000, 1000);


PFont font = createFont("Ariel", 32);
textFont(font);
  
  
}
void draw() {
  
  if(y<=0){
   
    background(0);
    fill(#FFFFFF);
    rect(300,300,500,500);
    fill(255,0,0);
    text("Level "+ score ,550,550);
    println(keyCode);
    if(keyCode==32){
      score++;
      speed++;
    x=900;
    y=900;
    }
    return;
  }
  if (intersects(car)||intersects(car1)||intersects(car2)||intersects(car3)||intersects(car4)||intersects(car5)) {
    x=900;
    y=900;
  }

  barrier();
  
  background(0, 0, 0);
  fill(0, 255, 19);
  x=x+fspeedx;
  y=y-fspeedy;
  ellipse(x, y, 50, 50);
  car.setX(car.getX()+7+speed);
  car1.setX(car1.getX()+5+speed);
  car2.setX(car2.getX()+9+speed);
  car3.setX(car3.getX()+2+speed);
  car4.setX(car4.getX()+9+speed);
  car5.setX(car5.getX()+1+speed);
  car();
  car1();
  car2();
  car3();
  car4();
  car5();

 // keyPressed();
//keyReleased();
  fill(219, 0, 0);
}

void car() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car.getX(), car.getY(), 100, 50);
}
void car1() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car1.getX(), car1.getY(), 100, 50);
}
void car2() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car2.getX(), car2.getY(), 100, 50);
}
void car3() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car3.getX(), car3.getY(), 100, 50);
}void car4() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car4.getX(), car4.getY(), 100, 50);
}void car5() {
  fill(219, 0, 0);
  stroke(0, 255, 18);
  rect(car5.getX(), car5.getY(), 100, 50);
}
void keyPressed()
{
  
    if (keyCode == UP)
    {
      fspeedy=+7;
    } else if (keyCode == DOWN)
    {
      fspeedy=-7;
    } else if (keyCode == RIGHT)
    {
      fspeedx=7;
    } else if (keyCode == LEFT)
    {
      fspeedx=-7 ;
    }
  
}void keyReleased(){

fspeedx=0;
    fspeedy=0;
}
boolean intersects(Car car) {
  if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+100))
  {
    return true;
  } else 
  {
    return false;
  }
}
void barrier() {
  
  if (x>=1000) {
    x=999;
  }if (y>=1000) {
    y=999;
  }if (x<=0) {
    x=0;
  }
  
  if(car.getX()>=1000){
  car.setX(1);
  }if(car1.getX()>=1000){
  car1.setX(1);
  }if(car2.getX()>=1000){
  car2.setX(1);
  }if(car3.getX()>=1000){
  car3.setX(1);
  }if(car4.getX()>=1000){
  car4.setX(1);
  }if(car5.getX()>=1000){
  car5.setX(1);
  }
}