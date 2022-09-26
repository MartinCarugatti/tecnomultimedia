ProgramaPrincipal programaPrincipal;

void setup(){
  size(700,600);
  background(255);
 
  programaPrincipal = new ProgramaPrincipal();
  programaPrincipal.crearPartes();
 
}

void draw(){
 programaPrincipal.dibujar();
}

void mousePressed() {
programaPrincipal.seleccionarPartes();}
