class Agente
{
    color c = color(0);
    Nodo nodo;
    float speed = 1;
    boolean termino;
    
    Agente(color c, Nodo nodo, float speed, boolean termino)
    {
      this.c = c;
      this.nodo = nodo;
      this.speed = speed;
      this.termino = termino;
    }
    
    public void setTermino(boolean termino)
    {
      this.termino = termino;
    }
    
    public void setC(color c)
    {
      this.c = c;
    }
    
    public void setNodo(Nodo nodo)
    {
      this.nodo = nodo;
    }
    
    public void setSpeed(float speed)
    {
      this.speed = speed;
    }
    
    public boolean getTermino()
    {
      return this.termino;
    }
    
    public color getC()
    {
      return this.c;
    }
    
    public Nodo getNodo()
    {
      return this.nodo;
    }
    
    public float getSpeed()
    {
      return this.speed;
    }

}
