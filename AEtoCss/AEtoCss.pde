
void setup() {
  String x[] = loadStrings("xPos.extracted.txt");
  String y[] = loadStrings("yPos.extracted.txt");
  String r[] = loadStrings("rot.extracted.txt");
  String s[] = loadStrings("xscale.extracted.txt");
  String s2[] = loadStrings("yscale.extracted.txt");

  
  float animLength = x.length-1;
  float percent = .0;
  int percentOut=0;
  int frame;
  println("@-webkit-keyframes nameOfCSSAnimation {");
  while (percent<=1.01) {
    frame=int(animLength*percent);
    percentOut=int(percent*100);
//all the data
 //println(percentOut + "% {-webkit-transform: translate(" + x[frame] + "px," + y[frame] + "px) rotate(" + r[frame] + "deg) scale(" + float(s[frame])/100 + ", " + float(s2[frame])/100 + "); }");
    
//only x, y, and rot    
    println(percentOut + "% {-webkit-transform: translate(" + x[frame] + "px," + y[frame] + "px) rotate(" + r[frame] + "deg); }");
    
    //only x,y, and scale
   //println(percentOut + "% {-webkit-transform: translate(" + x[frame] + "px," + y[frame] + "px) scale(" + float(s[frame])/100 + ", " + float(s2[frame])/100 + "); }");
  
  //only x and y 
  //println(percentOut + "% {-webkit-transform: translate(" + x[frame] + "px," + y[frame] + "px); }");
   
    percent+=.1;
  }
  println("}");
 
}
