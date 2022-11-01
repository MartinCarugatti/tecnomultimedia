class ProgramaPrincipal
{
  Pantalla pantallaInicio;
  Pantalla pantallaCreditos;
  Pantalla pantallaInstrucciones;
  Pantalla pantallaJuego;
  Boton botonStart;
  Boton botonCreditos;
  Boton botonVolver;
  Juego juego;
  
  void CrearJuego(){
  juego = new Juego();}
  
  void CrearBoton(){
 
  

  botonStart = new Boton(width/2, height/2, 200, 50,"Start");
   botonCreditos = new Boton(width/2,height/2+80,200,50,"Credits");
    botonVolver = new Boton(120,250,200,50,"Volver");


}
  void CrearPantallas(){
  int posXPantalla=0;
  int posYPantalla=0;
  int anchoPantalla= width ;
  int altoPantalla= height;
   
  pantallaInicio = new Pantalla(posXPantalla,posYPantalla,anchoPantalla,altoPantalla,"PantallaInicio");
   pantallaCreditos = new Pantalla(posXPantalla,posYPantalla,anchoPantalla,altoPantalla,"PantallaCreditos");
    pantallaInstrucciones = new Pantalla(posXPantalla,posYPantalla,anchoPantalla,altoPantalla,"PantallaInstrucciones");
    pantallaJuego = new Pantalla(posXPantalla,posYPantalla,anchoPantalla,altoPantalla,"PantallaJuego");
}

void dibujar(){
  imageMode(CORNER);
pantallaInicio.dibujar();
imageMode(CENTER);
botonStart.dibujar();
botonCreditos.dibujar();
juego.dibujar();
}

void mousePresionado(){


}}
