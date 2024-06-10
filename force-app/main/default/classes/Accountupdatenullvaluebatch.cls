global class Accountupdatenullvaluebatch implements Database.Batchable<sobject> {
    
    
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'select id, BillingCity, BillingStreet, BillingState, BillingCountry, AccountNumber from Account where BillingStreet = \'Lonawala\' or AccountNumber = null or BillingCity =\'New city mumbai\' or BillingState = null or BillingCountry  = null';
        return Database.getQueryLocator(query);
            }
    global void execute(Database.BatchableContext BC, List<Account> acclist)
    {
        for(Account acc: acclist){
            if(String.isBlank(acc.AccountNumber))
            {
                acc.AccountNumber='XXXX';
            }
          /*  if(String.isBlank(acc.billingCity))
            {
                acc.billingCity='Mumbai';
            }
*/
            if(String.isBlank(acc.billingState))
            {
                acc.billingState='Maharashta';
            }
            if(String.isBlank(acc.billingCountry))
            {
                acc.billingCountry='India';
            }
           /* if(String.isBlank(acc.billingStreet))
            {
               acc.billingStreet='Lonawala';
            }*/
            
            acc.billingStreet ='New city mumbai';            
             acc.billingCity='Mumbai';
          
            
        }
        
        update acclist;
    }
    
   global void finish(Database.BatchableContext BC)
   {
       System.debug('Inside finsih method');
   }


}