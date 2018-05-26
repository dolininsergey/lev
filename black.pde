public class myInsrucion {
  int tact;
  boolean cache, uo;
  int houseW = 20;
  int houseH = 60;
  
  myInsrucion(int tact, boolean cache, boolean uo) {
    this.tact = tact;
    this.cache = cache;
    this.uo = uo;
  }
  void drawKMemory(int y, int count) {
    int xWidth = 20, xHeight = 20;
    fill(255, 86, 86);
    for(int i = 0; i < count; i++) {
      rect(i*xWidth, y, xWidth, xHeight);
    }
  }
  void drawHouse(int x, int y, int w, int h) {
    fill(255);
    rect(x, y, w, h);
  }
}
void drawPipelineTop(int x1, int x2, int y) {
  fill(0);
  text("K", 5, y+3);
  line(x1, y, x2, y);
}
void drawPipelineBottom(int x1, int x2, int y) {
  fill(0);
  text("H.K", 5, y+3);
  line(x1, y, x2, y);
}
