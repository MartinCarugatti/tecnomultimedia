class Pantalla{
 float posX;
 float posY;
 float tamX;
 float tamY;
 PImage imagen;


 
Pantalla(int N){
  posX=0;
 posY=0;
tamX=400;
tamY=400;

 imagen = loadImage("img"+N+".jpg");
 }
 
 void dibujar(){
 image(imagen,posX,posY,tamX,tamY);}

 void siguientePantalla(){
   if(mousePressed)
   N+=1;

}
}
