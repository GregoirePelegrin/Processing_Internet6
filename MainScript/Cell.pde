class Cell{
  float xPos;
  float yPos;
  float freq;
  float widthCell;
  float heightCell;
  boolean red;  
  
  Cell(float x, float y, boolean r){
    this.xPos = x;
    this.yPos = y;
    this.freq = 1 + 3*(this.xPos+this.yPos) / (height+width);
    this.widthCell = widthCircle;
    this.heightCell = heightCircle;
    this.red = r;
  }
  
  void update(float t){
    if(this.red){
      this.widthCell = widthCircle * (1 + 1.0/3 * sin(this.freq*t));
      this.heightCell = widthCircle * (1 + 1.0/3 * sin(-this.freq*t));
    } else {
      this.widthCell = widthCircle * (1 + 1.0/3 * sin(-this.freq*t));
      this.heightCell = widthCircle * (1 + 1.0/3 * sin(this.freq*t));
    }
  }
  
  void display(){
    if(this.red){
      fill(255, 0, 0, 75);
    } else {
      fill(0, 0, 255, 75);
    }
    ellipse(this.xPos, this.yPos, this.widthCell, this.heightCell);
  }
}
