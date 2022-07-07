void CargaDeImagenesYFuente(int TamFuente){
pixel = createFont("FuentePixelada.ttf", TamFuente);
  textFont(pixel, 32);
  fill(colorFuente);
  for (int i = 0; i < 6; i++) {
    int index = i ;
    imagenes[i] = loadImage("img0" + index +".jpg");
  }
  DINO = loadImage("png0" + counter + ".png");

  for (int a = 0; a < 3; a++) {
    int index = a  ;
    PNG[a] = loadImage("png0" + index +".png");
  }}

void pantallaDeInicio(){
if(imagenActual==0){
   image(imagenes[2],width/2, height/2, 200, 50);
   image(imagenes[3], width/2,height/2+80,200,50);}}
   
   void creditos(){
   if(imagenActual==4){
   image(imagenes[5], 120,250,200,50);}}
void botonCreditos(){

if(mousePressed && mouseX<550 && mouseX>350 &&  mouseY<280 && mouseY>180 && imagenActual==0){
   imagenActual=4;
tamFondoX=900;}}   
void botonVolver(){
if(mousePressed && mouseX<220 && mouseX>20 &&  mouseY<275 && mouseY>225 && imagenActual==4){
imagenActual=0;
tamFondoX=900;}}
   
void botonDeInicio(){
if(mousePressed && mouseX<550 && mouseX>350 &&  mouseY<200 && mouseY>100 && imagenActual==0){
background(0);
posTextoY=150;
    tamFondoX=7200;
imagenActual=1;
personaje_estaSaltando=false;
personaje_posY = 210;
    cactus_posX= 1000;
    velocidad=4;
    puntaje=0;
}}
void pantallaDeJuego(){
if(imagenActual==1){
  fill(colorFuente);
  text("Press UP to jump",posTextoX,posTextoY);
  fill(0);
  text("Score: "+puntaje+" ",680,50);
 if(frameCount%60== 0){puntaje+=10;}
  if(frameCount%300== 0){velocidad++;}
  if(velocidad>=12){velocidad=12;}
  posX-=velocidad;
cactus_posX-=velocidad;
DINO = loadImage("png0" + counter + ".png");

image(DINO, personaje_posX,personaje_posY,tamPersonajeX,tamPersonajeX);
 if(frameCount%10== 0){
    counter++;
  }

  if (counter > 1) {
    counter = 0;}
  calcularQueEstaSaltando();

  for ( int b = 0; b < 6 ; b++){
  image(PNG[2],cactus_posX+distEntreCactus*b,cactus_posY,tamCactusX,tamCactusY);
  if( floor(dist(cactus_posX+distEntreCactus*b,cactus_posY,personaje_posX,personaje_posY)) <= 80) {
   imagenActual=0;
    posX=0;
    tamFondoX=900;
  
    cactus_posX= 1000;}
}}

if(posX<=-6300){posX=0;
}

if(cactus_posX<=-6000){cactus_posX=1000;}}



void calcularQueEstaSaltando() {
  if (keyPressed && keyCode == UP && !personaje_estaSaltando&&imagenActual==1) {
  posTextoY=-100;
    personaje_estaSaltando = true;
    personaje_estaSaltandoDireccion = 1; 
  } else if (imagenActual==1 &&
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == 1 &&
    personaje_posY < topeSalto) {
    personaje_estaSaltandoDireccion = -1;
  } else if (imagenActual==1&&
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == -1 &&
    personaje_posY > topePiso) {
    personaje_estaSaltandoDireccion = 0;
    personaje_estaSaltando = false;
  } else if (personaje_estaSaltando && personaje_estaSaltandoDireccion == 1) {
    personaje_posY=personaje_posY-personaje_velocidadSalto ;
  } else if (imagenActual==1 && personaje_estaSaltando && personaje_estaSaltandoDireccion == -1) {
    personaje_posY= personaje_posY+personaje_velocidadSalto;
  }
}
