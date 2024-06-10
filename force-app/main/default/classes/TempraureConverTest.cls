@isTest
public class TempraureConverTest {
    
    @isTest static void testwartemp(){
        
        Decimal celcius = TempratureConvert.FarenhiteToCelcius(70);
        System.assertEquals(21.11, celcius);
    }
    
      @isTest static void testlessTemp(){
        
        Decimal celcius = TempratureConvert.FarenhiteToCelcius(212);
        System.assertEquals(100, celcius);
    }

    
      @isTest static void testzerotemp(){
        
        Decimal celcius = TempratureConvert.FarenhiteToCelcius(32);
        System.assertEquals(0, celcius);
    }
}