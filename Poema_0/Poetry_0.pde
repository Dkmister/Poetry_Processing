PFont f;

void setup(){
  size(1200,500);
  printArray(PFont.list());
  f = createFont("SourceCodePro-Regular.ttf",20);
  textFont(f);
}


void draw(){
  background(42);
  textAlign(LEFT);
  makeN(width,height,20);//requires the max of the screen x and y, then the number of font
  makeA(width,height,20);
  makeO(width,height,20);
  drawFrase(width*0.45,height*0.1,"O PROBLEMA");
  drawFrase(width * 0.45, height * 0.8," É VOCE");
}

// Makes text "sim" with yellow collor
void drawSim(float x,float y){
  fill(0,255,0);
  text("SIM",x,y);
}
// Make a sentence with the following string in Red
void drawFrase(float x,float y,String s)
{
  float tw;
  fill(255,0,0);
  textSize(20);
  text(s,x,y);

}


// function that descend the letter n times, this n is defined by int val
// Make this
/* val = 5
nao
nao
nao
nao
nao

then the function calls drawType that draw the selected text*/
void descendLetter(float x, float y,int val){
  for(int j = val; j!=0; j--)
    {drawSim(x,y - 20*j);}
}

void diagdescendLetter(float x, float y,int val){
  for(int i = val; i != 0; i--)
    {
     drawSim(x + i*20,y-20*i);
    }

}

void _diagdescendLetter(float x, float y,int val){
  for(int i = val; i != 0; i--)
    {
     drawSim(x - i*20,y-20*i);
     
    }

}

// function that makes a primary letter N
void makeN(float x, float y,int textfont){
  int tf = 2 * textfont;
  descendLetter(x * 0.1, y * 0.65,5);
  descendLetter(x * 0.1 + tf , y * 0.65,5);
  drawSim(x * 0.1 + (2*tf), y * 0.65 - 2*tf);
  drawSim(x * 0.1 + 3*tf, y * 0.65 - 1.5*tf);
  descendLetter(x * 0.1 + 4*tf, y * 0.65,5);
  descendLetter(x * 0.1 + 5*tf, y * 0.65,5);
}


void makeA(float x, float y,int textfont){
  diagdescendLetter(x*0.4,y*0.65 ,5);
  _diagdescendLetter(x*0.56666666666666666,y*0.65,5);
  drawSim(x*0.46666666666666666,y*0.57);
  drawSim(x*0.5,y*0.57);
  drawSim(x*0.46666666666666666,y*0.37);
  drawSim(x*0.5,y*0.37);
}

void makeO(float x, float y,int textfont){
  int tf = 2 * textfont;
  descendLetter(x * 0.7, y * 0.65,5);
  descendLetter(x * 0.7 + tf , y * 0.65,5);
  descendLetter(x* 0.7 +2*tf,y*0.65,2);
  descendLetter(x* 0.7 +2*tf,y*0.53,2);
  descendLetter(x * 0.7+3*tf, y * 0.65,5);
  descendLetter(x * 0.7 +4*tf , y * 0.65,5);

}
