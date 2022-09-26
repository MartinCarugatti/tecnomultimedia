class ProgramaPrincipal{
EsqueletoRobot esqueletoRobot;
Partes brazoDerecho;
Partes brazoIzquierdo;
Partes piernas;
Partes cabeza;

  
ProgramaPrincipal(){

  
   esqueletoRobot = new EsqueletoRobot(200,100,400,400);

}

void dibujar(){
  esqueletoRobot.dibujar();
  brazoDerecho.dibujar();
  brazoIzquierdo.dibujar();
  piernas.dibujar();
  cabeza.dibujar();
  

}

void crearPartes(){
  int posXBD=100;
  int posYBD=100;
  int anchoBD=100 ;
  int altoBD =100;
   
  brazoDerecho = new Partes(posXBD,posYBD,anchoBD,altoBD,"BrazoDerecho");
   brazoIzquierdo = new Partes(100,200,100,100,"BrazoIzquierdo");
    cabeza = new Partes(100,400,100,100,"Cabeza");
    piernas = new Partes(100,300,100,100,"Piernas");
    
}
void moverBrazoDerecho(){
  brazoDerecho.moverBrazoDerecho();
  
}
void moverPiernas(){
piernas.moverPiernas();}

void moverBrazoIzquierdo(){
  brazoIzquierdo.moverBrazoIzquierdo();
}
void moverCabeza(){
cabeza.moverCabeza();}

void seleccionarPartes(){
if(mouseX>=100 && mouseX<=200 && mouseY>= 100 && mouseY<=200){
programaPrincipal.moverBrazoDerecho();}
if (mouseX>=100 && mouseX<=200 && mouseY>= 200 && mouseY<=300){
programaPrincipal.moverBrazoIzquierdo();}
if (mouseX>=100 && mouseX<=200 && mouseY>= 400 && mouseY<=500){
programaPrincipal.moverCabeza();}
if (mouseX>=100 && mouseX<=200 && mouseY>= 300 && mouseY<=400){
programaPrincipal.moverPiernas();}}
}
