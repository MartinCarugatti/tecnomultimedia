//https://youtu.be/cu6tlairW_Q
ProgramaPrincipal programaPrincipal;

void setup(){
  size(700,600);
  background(255);
  fill(0);
  textSize(24);

  programaPrincipal = new ProgramaPrincipal();
  programaPrincipal.crearPartes();
 
}

void draw(){
  background(255);
 text("Presione en las partes del Robot para colocarlas",70,50);
 programaPrincipal.dibujar();
}

void mousePressed() {
programaPrincipal.seleccionarPartes();}
