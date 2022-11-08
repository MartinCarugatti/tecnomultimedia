class Pantalla {
  int cant;
  int imagenActiva = 0;
  int posX=0;
  int ancho=900;
  Imagen [] imagenes;
  Boton botonStart;
  Boton botonCreditos;
  Boton botonVolver;
  Juego juego;

  Pantalla(String [] nombresDeImagenes) {
    cant = nombresDeImagenes.length;
    imagenes = new Imagen [cant];
    for (int i = 0; i < cant; i++) {
      imagenes[i] = new Imagen(nombresDeImagenes[i],posX,ancho);
      crearBoton();
      juego = new Juego();
    }
  }

  void dibujar() {
    background(0);
    imagenes[imagenActiva].dibujar();
    dibujarBoton();
    dibujarVolver();
    dibujarJuego();
    paralax();
    
  }
  void paralax(){
   if(imagenActiva==2){
  imagenes[2].mover();
  imagenes[2].ajustarImagen();
  imagenes[2].loopFondo();
}}
    
  
void cambiarPantalla(){
 
if(mouseX<550 && mouseX>350 &&  mouseY<200 && mouseY>100 && imagenActiva==0 )
  
  imagenActiva = 2;
  
if(mouseX<550 && mouseX>350 &&  mouseY<280 && mouseY>180 && imagenActiva==0)
imagenActiva = 1;
if(mouseX<220 && mouseX>20 &&  mouseY<275 && mouseY>225 && imagenActiva ==1)
imagenActiva = 0;


}
void teclaPresionada(){
juego.teclaPresionada();
}
void crearBoton() {
    botonStart = new Boton(width/2, height/2, 200, 50, "Start");
    botonCreditos = new Boton(width/2, height/2+80, 200, 50, "Credits");
    botonVolver = new Boton(120, 250, 200, 50, "Volver");
  }
  
  void dibujarVolver(){
  
    if(imagenActiva ==1){
    botonVolver.dibujar();}
  }

void dibujarJuego(){
  if(imagenActiva==2)
juego.dibujar();
  }
void dibujarBoton(){
 
  if(imagenActiva == 0){
  botonStart.dibujar();
    botonCreditos.dibujar();
    
  }
}

}
