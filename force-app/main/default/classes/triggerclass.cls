public with sharing class triggerclass {
    public static void insertMethod(List<Account> newlist) {

        for(Account acc : newlist){

            if(acc.Rating == 'Hot'){
          
              acc.Description = 'New inserted column';
            }
              

        



    }
}
}