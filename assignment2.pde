PImage image;
int direction = 1;
void setup(){
size(683,1024);
image = loadImage("heibai.jpg");
background(image);
frameRate(5);
}

void draw()
{
  

for(int i =0;i<width;i+=5){
  for(int j =0;j<height;j+=5){
    color c = get(i, j);
noStroke();
fill(c);
switch(direction){
  case 1:circle(i-random(5),j-random(5),5);break;
  case 2:circle(i+random(5),j-random(5),5);break;
  case 3:circle(i+random(5),j+random(5),5);break;
  case 4:circle(i-random(5),j+random(5),5);break;
}

}

}

}

void mouseClicked(){
  
  if(mouseX<100&&mouseX>0&&mouseY>0&&mouseY<100){
  direction = 1;  
  }
    if(mouseX<width&&mouseX>width-100&&mouseY>0&&mouseY<100){
  direction = 2;  
  }
    if(mouseX<width&&mouseX>width-100&&mouseY>height-100&&mouseY<height){
  direction = 3;  
  }
    if(mouseX<100&&mouseX>0&&mouseY>height-100&&mouseY<height){
  direction = 4;  
  }


}
void keyPressed(){
  if(key == 'r'){

    background(image);
  }

}
