void setup() {
int x=100;
int y=100;

    background(0, 0, 40); size(800, 800);
    for(int i =0;i<1000;i++){
text("bananas",x,y);
y+=15;
if(y>700){
x+=70;
y=100;
    }
}
}