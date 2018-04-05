int w = 1000;
int h = 1000;

int s=10;

void setup() {
  size(1000, 1000);
  background(0, 0, 0);
  for (int i =0; i<100; i++) {
float r2 =random(h);
    float r=random(w);
    float r1 =random(h);
    fill(random(256),random(256),random(256));
    drawStar(r, r1, s);
  }
}
void drawStar(float xPos, float yPos, int size) {
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = xPos + cos(a) * size * 2;
    float sy = yPos + sin(a) * size * 2;
    vertex(sx, sy);
    sx = xPos + cos(a+halfAngle) * size;
    sy = yPos + sin(a+halfAngle) * size;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}