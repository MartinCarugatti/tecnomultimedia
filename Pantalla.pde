class Pantalla {
  int cant;
  int imagenActiva = 0;
  int posX=0;
  int jugando = 0;

  PImage [] imagenes = new PImage [4];
  int tamFondoX=900;


  Boton botonStart;
  Boton botonCreditos;
  Boton botonVolver;
  Boton botonInstrucciones;
  Boton botonReiniciar;
  Juego juego;

  Pantalla() {
    for (int i = 0; i < 4; i++) {
      int index = i ;
      imagenes[i] = loadImage("img0" +   index +".jpg");
    }
    crearBoton();
    juego = new Juego(false);
  }


  void dibujar() {
    background(0);
    image(imagenes[imagenActiva], posX, 0, tamFondoX, height);
    dibujarBoton();
    dibujarVolver();
    
    dibujarJuego();
    paralax();
     perdiste();
 
  }
  void paralax() {
    if (imagenActiva==2) {
      tamFondoX=7200;
      posX-=5;}else { tamFondoX=900;
    posX=0;}
      
    
  if(posX <=-6200){posX=0;}
     
    }
  


  void cambiarPantalla() {

    if (mouseX<550 && mouseX>350 &&  mouseY<200 && mouseY>100 && imagenActiva==0 )// inicia juego


      imagenActiva = 2;
      juego.reinicio();
juego.colision= false;
juego.gameOver=false;
 if (mouseX<550 && mouseX>350 &&  mouseY<200 && mouseY>100 && imagenActiva==2 )
  juego.reinicio();
juego.colision= false;
juego.gameOver=false;
    if (mouseX<550 && mouseX>350 &&  mouseY<280 && mouseY>180 && imagenActiva==0)// creditos 
      imagenActiva = 1;
    if (mouseX<220 && mouseX>20 &&  mouseY<275 && mouseY>225 && imagenActiva ==1)// volver creditos
      imagenActiva = 0;
 if (mouseX<550+320 && mouseX>350+320 &&  mouseY<280 && mouseY>180 && imagenActiva==0)// instrucciones 
      imagenActiva = 3;
      if (mouseX<220 && mouseX>20 &&  mouseY<275 && mouseY>225 && imagenActiva ==3)// volver instrucciones
      imagenActiva = 0;
       if (mouseX<220 && mouseX>20 &&  mouseY<275 && mouseY>225 && imagenActiva ==2)// volver creditos
      imagenActiva = 0;
  }
  
  void crearBoton() {
    botonStart = new Boton(width/2, height/2, 200, 50, "Start");
    botonCreditos = new Boton(width/2, height/2+80, 200, 50, "Credits");
    botonVolver = new Boton(120, 250, 200, 50, "Volver");
    botonInstrucciones = new Boton(width/2+320, height/2+80, 200, 50, "Instructions");
     botonReiniciar = new Boton(width/2, height/2, 200, 50, "Restart");
  }

  void dibujarVolver() {

    if (imagenActiva ==1 || imagenActiva ==3) {
      botonVolver.dibujar();
      
    }
  }


void perdiste(){
if(juego.gameOver==true && imagenActiva ==2 ){
botonVolver.dibujar();
botonReiniciar.dibujar();
}
}



  void dibujarJuego() {
    if (imagenActiva==2)
      juego.dibujar();
      
  }
  void dibujarBoton() {

    if (imagenActiva == 0) {
      botonStart.dibujar();
      botonCreditos.dibujar();
      botonInstrucciones.dibujar();
    }
  }
}
