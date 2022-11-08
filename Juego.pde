class Juego {
  Personaje personaje;
  Obstaculo obstaculo;

  int personaje_posX = 100;
  int personaje_posY = 210;
  int tamPersonajeX = 80;
  int tamPersonajeY = 80;
  int posXObs=1000;
  boolean colision = false;
  Juego() {

    personaje = new Personaje(personaje_posX, personaje_posY, tamPersonajeX, tamPersonajeY, "Dino0");
    obstaculo = new Obstaculo(posXObs, 210, 80, 80);
  }


  void dibujar() {
    imageMode(CENTER);
    personaje.dibujar();
    obstaculo.dibujar();
    calcularQueEstaSaltando();
    obstaculo.movimiento();
    obstaculo.redibujar();
   
  }

  



  void teclaPresionada() {
    if ( keyCode == UP )
      personaje.saltar();
  }
  void calcularQueEstaSaltando() {
  }
}
