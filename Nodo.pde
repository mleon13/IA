class Nodo
{
    private int x;
    private int y;
    private boolean meta;
    private Nodo norte;
    private Nodo sur;
    private Nodo este;
    private Nodo oeste;
    
    Nodo(int x,int y,boolean meta,Nodo norte,Nodo sur,Nodo este,Nodo oeste)
    {
      this.x = x;
      this.y = y;
      this.meta = meta;
      this.norte = norte;
      this.sur = sur;
      this.este = este;
      this.oeste = oeste;
    }
    
    public boolean getMeta()
    {
      return this.meta;
    }
    
    public void setMeta()
    {
      this.meta = meta;
    }
    public int getX()
    {
      return this.x;
    }
    
    public int getY()
    {
      return this.y;
    }
    
     public Nodo getNorte()
    {
      return this.norte;
    }
    
    public Nodo getSur()
    {
      return this.sur;
    }
    
    public Nodo getEste()
    {
      return this.este;
    }
    
    public Nodo getOeste()
    {
      return this.oeste;
    }
    
    public void setX(int x)
    {
      this.x = x;
    }
    
    public void setY(int y)
    {
      this.y = y;
    }
    
    public void setNorte(Nodo n)
    {
      this.norte = n;
    }
    
    public void setEste(Nodo n)
    {
      this.este = n;
    }
    
    public void setOeste(Nodo n)
    {
      this.oeste = n;
    }
    
     public void setSur(Nodo n)
    {
      this.sur = n;
    }
}
