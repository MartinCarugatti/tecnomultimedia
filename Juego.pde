class Juego {
  Personaje personaje;
  Cactus cactus;
  Terodactilo terodactilo;
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
  int posXTero=2000;
  int posYTero=210;
  boolean colision1 = false;

  Juego(boolean _gameOver) {
    gameOver= _gameOver;
    personaje = new Personaje(personaje_posX, personaje_posY, tamPersonajeX, tamPersonajeY, "Dino0");
    cactus = new Cactus(posXObs, posYObs, 80, 80);
    score = new Score();
    terodactilo = new Terodactilo(posXTero, posYTero, 80, 80);
  }


  void dibujar() {
    imageMode(CENTER);
    if (colision==false && colision1==false) {
      personaje.dibujar();
      cactus.dibujar();
      score.dibujar();
      cactus.movimiento();
      cactus.redibujar();
      terodactilo.dibujar();
      terodactilo.movimiento();
      terodactilo.redibujar();
      colision();
      finDelJuego();
      colision2();
    }
  }



  void colision2() { 
    if ( floor(dist(terodactilo.posX, posYTero, personaje_posX, personaje.posY))<= 80) {
      colision1 = true;
      reinicio();
    }
  }

  void colision() {
    if ( floor(dist(cactus.posX, posYObs, personaje_posX, personaje.posY))<= cactus.ancho) {
      colision = true;
      reinicio();
    }
  }
  void finDelJuego() {
    if (colision== true || colision1== true) {
      gameOver= true;
    }
  }

  void reinicio() {
    personaje.reiniciarPosicion();
    cactus.reiniciarPosicion();
    score.reiniciar();
    terodactilo.reiniciarPosicion();
  }
}
