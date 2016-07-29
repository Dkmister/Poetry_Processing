PFont f;
// projeto pra fazer poema visual 
// 1 passo - fazer letra N com sims (concluido)
void setup(){
  size(1000,500);
  printArray(PFont.list());
  f = createFont("SourceCodePro-Regular.ttf",25);
  textFont(f);
}


void draw(){
  background(50);
  textAlign(LEFT);
  makeN();
}


void drawSim(float x,float y){
  fill(0,255,0);
  text("sim",x,y);
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
    {drawSim(x,y - 25*j);}
}
// function that makes a primary letter N
void makeN(){
  descendLetter(width * 0.25, height * 0.65,5);
  descendLetter(width * 0.25 + 50, height * 0.65,5);
  drawSim(width * 0.25 + 100, height * 0.65 - 100);
  drawSim(width * 0.25 + 150, height * 0.65 - 75);
  descendLetter(width * 0.25 + 200, height * 0.65,5);
  descendLetter(width * 0.25 + 250, height * 0.65,5);
}