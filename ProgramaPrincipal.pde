class ProgramaPrincipal {
  
  String [] nombresDeImagenes = {"PantallaInicio.jpg", "PantallaCreditos.jpg", "PantallaJuego.jpg", "PantallaInstrucciones.jpg"};
  Pantalla pantalla;
   
   
   
    
    
    ProgramaPrincipal(){
    pantalla = new Pantalla();
  
}

void dibujar(){
  imageMode(CORNER);
  pantalla.dibujar();
  imageMode(CENTER);
    
  

}


void mousePresionado(){
pantalla.cambiarPantalla();
}


}
