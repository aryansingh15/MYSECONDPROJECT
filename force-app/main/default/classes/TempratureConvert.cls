public class TempratureConvert {
    
    public static Decimal FarenhiteToCelcius(Decimal fh)
    {
        Decimal cs = (fh-32)*5/9;
        System.debug('Temprature in Celscius '+cs.setScale(2));
        return cs.setScale(2);
    }
}