int IlistSize = 5;





Instrucion[] Ilist = new Instrucion[IlistSize];

void setup() {
  size(1100, 500);
}

void draw() {
  
  Ilist[0] = new Instrucion(1, true, true);
  Ilist[1] = new Instrucion(2, true, true);
  Ilist[2] = new Instrucion(2, true, true);
  Ilist[3] = new Instrucion(1, true, true);
  Ilist[4] = new Instrucion(2, true, true);
  
  
  Instrucion instr = new Instrucion(4, false, false);
  Instrucion in = new Instrucion(3, true, true);

  instr.drawPipeline();
  
  instr.drawHouse();
  instr.drawMemory();
  
  in.drawMemory();
  
  line(0, 50, 5, 50);
  line(25, 50, 45, 50);
  line(65, 50, 85, 50);
  line(105, 50, 125, 50);
  line(145, 50, 165, 50);
  }
