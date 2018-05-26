public class Instrucion {
  int tact;
  boolean cache, uo;
  int houseW = 20;
  int houseH = 60;
  
  int xWidth = 20, xHeight = 20;
  
  int xPipelineK1 = 20;
  int xPipelineK2 = 1095;
  int yPipelineK = 120;

  int xPipelineNk1 = 30;
  int yPipelineNk = 320;
  
  int startX = 50;
  int fSh = 5;
  int Fop = 2;
  
  Instrucion(int tact, boolean cache, boolean uo) {
    this.tact = tact;
    this.cache = cache;
    this.uo = uo;
  }
  void drawPipeline() {
    fill(0);
    text("K", 5, yPipelineK+3);
    line(xPipelineK1, yPipelineK, xPipelineK2, yPipelineK);
    
    text("H.K", 5, yPipelineNk+3);
    line(xPipelineNk1, yPipelineNk, xPipelineK2, yPipelineNk);
  }
  void drawHouse() {
    fill(255);
    rect(startX, yPipelineK-houseH, houseW, houseH);
    // house в отдельный класс + bool - метод для рисования стрелки
  } 
  void drawMemory() { 
     int x = startX-houseW, y = yPipelineK, count = tact*fSh; 
     if(!cache) {
       y = yPipelineNk-xHeight; 
       count = tact*Fop;
     }
     
     if(!uo) fill(255);
     else fill(255, 86, 86);
      
     for(int i = 0; i < count; i++) {
       int step = i*xWidth + x;
       if(x == 0) rect(step, y, xWidth, xHeight);
       else rect(step+xWidth, y, xWidth, xHeight);
     }
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
