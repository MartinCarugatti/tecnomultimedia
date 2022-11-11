class Juego {
  Personaje personaje;
  Obstaculo obstaculo;

  int personaje_posX = 100;
  int personaje_posY = 210;
  int tamPersonajeX = 80;
  int tamPersonajeY = 80;
  int posXObs=1000;
  int posYObs=210;
  boolean colision = false;
  int juegoActivo = 0;
  Juego() {

    personaje = new Personaje(personaje_posX, personaje_posY, tamPersonajeX, tamPersonajeY, "Dino0");
    obstaculo = new Obstaculo(posXObs, posYObs, 80, 80);
  }


  void dibujar() {
    imageMode(CENTER);
    if(colision==false){
    personaje.dibujar();
    obstaculo.dibujar();
   
    obstaculo.movimiento();
    obstaculo.redibujar();
    colision();

    
    }
   
  }

void colision(){
if( floor(dist(obstaculo.get(),posYObs,personaje_posX,personaje.get()))<= 80){
colision = true;

  if(colision==true){juegoActivo = 0;}
  
  personaje.reiniciarPosicion();
  
obstaculo.reiniciarPosicion();
}
}

int get(){
return juegoActivo;
}


  void teclaPresionada() {
    if ( keyCode == UP )
      personaje.saltar();
  }
  
}
