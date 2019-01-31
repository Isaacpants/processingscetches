int x1=100;

int score = 0;
int y1 = 0;
void setup() {
  size(2000, 1200);
}
void draw() {
  background(3, 249, 255);
  random(0, 100);
  text(score, 1000, 30);
  int x = mouseX;
  int y = mouseY;
  int       px=x+50;

  y1+=10;
  for (int i = 0; i<10; i++) {

    fill(255, 0, 213);
    rect(x1+(i*200), y1, 50, 50);
  }

  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  if (y1>=1200) {
    y1=0;
    score+=1;
    x1=(int)random(0, 300);
  }
  for(int i = x1;i<x1+2001;i+=200){
  if (y1-25<y&&i-25<x&&y1+25>y&&i+25>x) { 
    score=0;
  }
}
}