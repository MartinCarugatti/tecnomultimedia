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


void seleccionarPartes(){
if(mouseX>=100 && mouseX<=200 && mouseY>= 100 && mouseY<=200){
brazoDerecho.mover(190,140,220,220);}
if (mouseX>=100 && mouseX<=200 && mouseY>= 200 && mouseY<=300){
brazoIzquierdo.mover(420,140,220,220);}
if (mouseX>=100 && mouseX<=200 && mouseY>= 400 && mouseY<=500){
cabeza.mover(350,80,100,200);}
if (mouseX>=100 && mouseX<=200 && mouseY>= 300 && mouseY<=400){
piernas.mover(292,275,220,235);}
}

}
