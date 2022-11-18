class Juego {
  Personaje personaje;
  Obstaculo obstaculo;
Score score;
  int personaje_posX = 100;
  int personaje_posY = 210;
  int tamPersonajeX = 80;
  int tamPersonajeY = 80;
  int posXObs=1000;
  int posYObs=210;
  boolean colision = false;
  int juegoActivo = 0;
  boolean gameOver;
 
  Juego(boolean _gameOver) {
gameOver= _gameOver;
    personaje = new Personaje(personaje_posX, personaje_posY, tamPersonajeX, tamPersonajeY, "Dino0");
    obstaculo = new Obstaculo(posXObs, posYObs, 80, 80);
   score = new Score();
   
  }


  void dibujar() {
    imageMode(CENTER);
    if (colision==false) {
      personaje.dibujar();
      obstaculo.dibujar();
score.dibujar();
      obstaculo.movimiento();
      obstaculo.redibujar();
      colision();
 finDelJuego();
       
    }
    }
  





  void colision() {
    if ( floor(dist(obstaculo.posX, posYObs, personaje_posX, personaje.posY))<= 80) {
      colision = true;
reinicio();


     
    }
  }
void finDelJuego(){
if(colision== true){
gameOver= true;

}
}
 
void reinicio(){
personaje.reiniciarPosicion();
obstaculo.reiniciarPosicion();
score.reiniciar();
}

  
}
