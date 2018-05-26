public class Instruction {
  int tact, KnK, YnY;
  
  Instruction(int tact, int KnK, int YnY) {
    this.tact = tact;
    this.KnK = KnK;
    this.YnY = YnY;
  }
}
public class House {
  int x, y, w, h;
  
  House(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  PShape drawHouse(PShape shape) {
    shape = createShape(RECT, x, y, w, h);
    shape.setFill(color(255, 255, 255));
    //shape.setFill(color(101, 244, 66)); // green
    shape.setStroke(true);
    return shape;
  }
  void drawKMemory(int x, int y, int q, int h) {
    rect(x, y, w, h);
  }
}
public class Arrow {
  int x1, y1, x2, y2;
  
  Arrow(int x1, int y1, int x2, int y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }
}
public class KMemory {
  int x, y, w, h;
  
  KMemory(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  PShape drawKMemory(PShape shape) {
    shape = createShape(RECT, x, y, w, h);
    shape.setFill(color(255, 255, 255));
    //shape.setFill(color(101, 244, 66)); // green
    shape.setStroke(true);
    return shape;
  }
}

int fSh = 2;
int Fop = 3;

int xPipelineK1 = 20;
int xPipelineK2 = 1095;
int yPipelineK = 120;

int xPipelineNk1 = 30;
int yPipelineNk = 320;

int startX = 50;

void setup() {
  size(1100, 500);
}

void draw() {
  //fill(0);
  //text("K", 5, 123);
  //line(20, 120, 895, 120);
  
  //House me = new House(0, 20, 0, 60);
  //shape(me.drawHouse(new PShape()), 2, 60);
  
  //fill(0);
  //text("H.K", 5, 323);
  //line(30, 320, 895, 320);
  
  drawPipelineTop(xPipelineK1, xPipelineK2, yPipelineK);
  drawPipelineBottom(xPipelineNk1, xPipelineK2, yPipelineNk);
  
  myInsrucion instr = new myInsrucion(4, false, false);
  instr.drawKMemory(yPipelineK, instr.tact*fSh);
  instr.drawHouse(startX, yPipelineK-instr.houseH, instr.houseW, instr.houseH);
  

}
