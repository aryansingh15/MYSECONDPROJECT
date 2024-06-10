public class ultilityclass {
    
    public void creatingSingleRecords(String n, String bc)
    {
        
        Account acc = new Account(Name=n,billingCity=bc);
        insert acc;
        System.debug('representg the isd of new recors '+ acc.id);
    }

    
    public void creatingMultipleRecords(Integer numberodAccountToCreate, String nameOfAccount)
    {
        List<Account> accountRecorsTobecreated = new List<Account>();
        for(integer i=0; i<numberodAccountToCreate; i++)
        {
            Account acc = new Account(Name='nameOfAccount '+i);
            accountRecorsTobecreated.add(acc);
            System.debug('Multiple account created');
            
        }
    }
}