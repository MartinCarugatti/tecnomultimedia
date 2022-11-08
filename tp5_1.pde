ProgramaPrincipal programaPrincipal;

void setup() {
  size(900, 300);
  //String [] nombresDeImagenes = new String [10];  
 programaPrincipal = new ProgramaPrincipal();
 
}

void draw() {
  background(200);
  programaPrincipal.dibujar();
  
  
  }


void keyPressed() {
programaPrincipal.teclaPresionada();
}

void mouseClicked() {
 programaPrincipal.mousePresionado();
}
