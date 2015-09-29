    Grafo g;
    Agente a;
    int x;
    int y;
    int metaX;
    int metaY;
    boolean direccion = true;
    
    void setup() 
    {
      x = 100; y = 100;
      metaX = 5; metaY = 5;
      size(150, 150);
      g = new Grafo();
      g.setInicio(1,1);
      g.construirGrafo(x,y,metaX,metaY);
      a = new Agente(color(0),g.getInicio(),1,false);
      smooth();
    }
    
    void draw() {
      background(255);
      fill(237,24,24);
      rect(metaX,metaY,5,5);
      direccion = g.display(x,y,direccion,a);
    }
