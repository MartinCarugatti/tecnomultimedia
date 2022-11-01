ProgramaPrincipal programaPrincipal;


void setup(){
  background(200);
   size(900, 300);
     programaPrincipal = new ProgramaPrincipal();
     programaPrincipal.CrearPantallas();
     programaPrincipal.CrearBoton();
     programaPrincipal.CrearJuego();
     
}
void draw(){
background(200);
programaPrincipal.dibujar();
}

void mousePressed(){
programaPrincipal.mousePresionado();
}
