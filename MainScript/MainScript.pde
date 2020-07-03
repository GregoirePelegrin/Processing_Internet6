ArrayList<Cell> red;
ArrayList<Cell> blue;

float time;
float widthCircle;
float heightCircle;
int nbrCols;
int nbrRows;

void setup(){
  size(600, 600);
  frameRate(30);
  noStroke();
  
  time = 0;
  nbrCols = 10;
  nbrRows = nbrCols;
  
  widthCircle = width/nbrCols/2;
  heightCircle = height/nbrRows/2;
  
  red = new ArrayList<Cell>();
  blue = new ArrayList<Cell>();
  
  for(int i=0; i<=nbrRows; i++){
    for(int j=0; j<=nbrCols; j++){
      Cell cell = new Cell(j*width/nbrCols, i*height/nbrRows, true);
      red.add(cell);
      cell = new Cell(j*width/nbrCols, i*height/nbrRows, false);
      blue.add(cell);
    }
  }
}

void draw(){
  background(0);
  
  for(int i=0; i<red.size(); i++){
    red.get(i).update(time);
    blue.get(i).update(time);
    red.get(i).display();
    blue.get(i).display();
  }
  
  time += 0.1;
}
