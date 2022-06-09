void circulos(int color1){
for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
    stroke(0);
      strokeWeight(0.5);
  
 float distanciaDelCentro= (dist(pmouseX,pmouseY,300,300));
float colorAdaptable= (map( distanciaDelCentro,0,300,255,0));
 fill(colorAdaptable);   
ellipse(dist+dist*2*x+movimientoLateral,dist+y*(dist*2)+movimientoVertical, tamEllipseGrande, tamEllipseGrande);
fill(color1);
noStroke();
ellipse(dist+dist*2*x+movimientoLateral, dist+y*dist*2+movimientoVertical, tamEllipseChica, tamEllipseChica);}}}

void lineasVerYHor(){
for(int a=0;a<cant;a++){
    for(int b=0;b<cant;b++){
  stroke(120);
  strokeWeight(grosor);
  line(0,dist*b,600,dist*b);
  line(dist*a,0,dist*a,600);
}}}
  
  void lineasOblicuas(){
  for(int c=0;c<cant;c++){
  for(int d=0;d<cant;d++){fill(255);
    line(-300+(dist*c),300+(dist*c),300+(dist*c),-300+(dist*c));
line(-300+(dist*d),300-(dist*d),300+(dist*d),900-(dist*d));}}}
