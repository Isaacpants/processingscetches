int byv = 0;
int g = 1;
int x = 25;
int y = 5;
int x1 = 500;
int y1 = 0;
int ly = 495;
int uy = 0;
int pg = 150;

int upperPipeHeight = (int) random(100, 300);
int score;
void setup() {
  size(500, 500);
  background(0, 255, 44);
  
}

void draw() { 
  println(score);
  ly = uy + upperPipeHeight + pg;
  background(0, 255, 44);
  fill(178, 0, 255);
  stroke(255, 3, 226);
  teleportPipes();
  fill(0, 0, 255);
  rect(x1, y1, 50, upperPipeHeight);
  rect(x1, ly, 50, 500);

  fill(255, 0, 0);
  rect(0, 495, 500, 50 );
  fill(255, 1+50, 0);
  
  ellipse(x, y, 20, 20);
  if (intersectsPipes()== false) {
    x1-=2;
    
  }
  if(intersectsPipes()==true){
  
  exit();
  
  
  }
  byv+=g;
  y+=byv;
  if (mousePressed==true) {
    byv=-8 ;
  }
}

void teleportPipes() {
  if (x1<=0) {
    x1 = 500;
    upperPipeHeight = (int) random(100, 300);
    score++;
  }
}

boolean intersectsPipes() { 
  if (y < upperPipeHeight && x > x1 && x < (x1+50)) {
        println("uppper collided");
    return true;
  } else if (y>ly && x > x1 && x < (x1+50)) {
    println("lower collided");
    return true;
  } else { 
    return false;
  }
}