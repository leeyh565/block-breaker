void settings(){
    size(1800, 1000);
}


int x;
int y;
int speedX = 11;
int speedY =4;
int [] [] bricks = new int[5][20];


void setup() {

  x = width/2;
  y = height/2;
 for(int i=0; i<5; i++)
  for(int j=0; j<20; j++){
   bricks[i][j]=1; }

  
  
}

void draw() {
  background(0);
  
  
  ellipse(x,y,25,25);
  fill(255);
  x = x+speedX;
  
  y = y+speedY;

for(int i=0; i<5; i++)
  for(int j=0; j<20; j++){
   if (bricks[i][j] ==1) rect(j*90 , i*55 , 90,55);
  }
  

if(x<0 || x>1800) {speedX = -speedX;}
  if(y<0  || y>1000 || x >=mouseX && y >= 800 && y <=801) {speedY = -speedY;}

if (y < 275) {
  if( bricks[y/55][x/90] == 1){
     bricks[y/55][x/90] = 0;
     speedY = -speedY;
  }
  else if (y <0) speedY = -speedY;
  
}


  
  rect(mouseX,800,100,10);




  
}
