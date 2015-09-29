class Grafo
{
   private Nodo inicio;
   
   Grafo()
   {
   }
   
   public void setInicio(int x, int y)
   {
       this.inicio = new Nodo(x,y,false,null,null,null,null);
   }
   
   public Nodo getInicio()
   {
     return this.inicio;
   }
   
   public boolean display(int x, int y, boolean direccion, Agente a)
   {
     if(!a.getTermino())
     {
     if(direccion)
         if(a.getNodo().getX() == x){
           direccion = false;
           a.setNodo(a.getNodo().getSur());
         }else{
            a.setNodo(a.getNodo().getEste());
         }
     else{
         if(a.getNodo().getX() == 1){
           if(a.getNodo().getY() != y){
             direccion = true;
             a.setNodo(a.getNodo().getSur());
           }else{
             a.setTermino(true);
             print("Meta nunca fue encontrada en: ");
           }
         }else{
            a.setNodo(a.getNodo().getOeste());
         }
     }
      fill(a.getC());
      if(a.getNodo().meta){
        print("Meta encontrada en: ("+a.getNodo().getX()+","+a.getNodo().getY()+") \n");
        a.setTermino(true);
      }
      rect(a.getNodo().getX(),a.getNodo().getY(),10,10);
     }
      return direccion;
   }

   public void construirGrafo(int x, int y, int metaX, int metaY)
   {
       Nodo actual = inicio;
       Nodo norte = null;
       boolean meta = true;
       int plus = 1;
       boolean direccion = true;
       for(int i = 1;i<=y;i++){
         for(int k = 1;k<x;k++){
           Nodo nuevo;
           if( (actual.getX()+plus) == metaX && i == metaY)
             nuevo = new Nodo(actual.getX()+plus,i,meta,null,null,null,null);
           else
             nuevo = new Nodo(actual.getX()+plus,i,!meta,null,null,null,null);
           if(norte != null){
             nuevo.setNorte(norte);
             if(norte.getSur() == null)
               norte.setSur(nuevo);
           }
           if(direccion){
             actual.setEste(nuevo);
             nuevo.setOeste(actual);
             if(norte != null){
               norte = norte.getEste();
             }
           }else{
             actual.setOeste(nuevo);
             nuevo.setEste(actual);
             if(norte != null){
               norte = norte.getOeste();
             }
           }
           actual = nuevo;
         }
        if(direccion){
           direccion = false;
           plus = -1;
         }else{
           direccion = true;
           plus = 1;
         }
         Nodo sur;
         
         if( actual.getX() == metaX && (actual.getY()+1 == metaY))
           sur = new Nodo(actual.getX(),actual.getY()+1,meta,null,null,null,null);
         else
           sur = new Nodo(actual.getX(),actual.getY()+1,!meta,null,null,null,null);
         actual.setSur(sur);
         sur.setNorte(actual);
         norte = actual;
         actual = sur;
      }
   }   
}
