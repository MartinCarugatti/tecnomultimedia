ProgramaPrincipal programaPrincipal;
import processing.sound.*;
SoundFile fileEffect;


void setup() {
  size (900, 300); 
  programaPrincipal = new ProgramaPrincipal();
  fileEffect = new SoundFile(this, "musica.wav");
}

void draw() { 
  programaPrincipal.dibujar();
  if (!fileEffect.isPlaying()) {

    fileEffect.play(1);
    fileEffect.amp(0.01);
  }
}


void mousePressed() {
  programaPrincipal.mousePresionado(mouseX, mouseY);
}
