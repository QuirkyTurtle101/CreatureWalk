float x = 100;
float speedX = 1;
int sizeX = 1920;
int sizeY = 1080;
int time = 1;

void settings(){
  fullScreen();
  size(sizeX, sizeY);
}

void draw(){
  background(0, 0, 0);
  
  fill(255, 255, 255);
  drawCthulhu(time, 0, 0, 1);
  time++;
}

void drawCthulhu(float time, float posX, float posY, int size){
  rectMode(CENTER);
  circle(posX+time*1.5, (posY+time)/3+(Math.abs(sin(time/10))*((-1)*time/4)), (size+time)/2); //head
  circle((posX+time*1.5)+(time/10), (posY+time)/2-(time/5)+(Math.abs(sin(time/10))*((-1)*time/4)), (size+time)/7); //one eye
  circle((posX+time*1.5)-(time/10), (posY+time)/2-(time/5)+(Math.abs(sin(time/10))*((-1)*time/4)), (size+time)/7); //other eye
  circle(posX+time*1.5, posY+time+(Math.abs(sin(time/10))*((-1)*time/4)), size+time); //belly
  rect(posX+time*1.5, (posY+time/2)+(Math.abs(sin(time/10))*((-1)*time/4)), (size+time)/7, (size+time)/7); //mouth beard thing?
}
