public class CraExample {
    
   public String carname;
   public Integer avgSpeed;
   public String model;
    
    
    public void Display(){
        
        newdsplay();
        System.debug('The car name is ' +carname);
        System.debug('The avg speed is' +avgSpeed);
        System.debug('The model is ' +model);
    }
    
    private void newdsplay(){
        
        System.debug('This is my car');
    }

}