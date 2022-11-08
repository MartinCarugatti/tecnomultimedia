class ProgramaPrincipal {
  
  String [] nombresDeImagenes = {"PantallaInicio.jpg", "PantallaCreditos.jpg", "PantallaJuego.jpg", "PantallaInstrucciones.jpg"};
  Pantalla pantalla;
   
   
   
    
    
    ProgramaPrincipal(){
    pantalla = new Pantalla(nombresDeImagenes);
  
}

void dibujar(){
  imageMode(CORNER);
  pantalla.dibujar();
  imageMode(CENTER);
    
   

}
void teclaPresionada(){
pantalla.teclaPresionada();
}

void mousePresionado(){
pantalla.cambiarPantalla();
}


}
