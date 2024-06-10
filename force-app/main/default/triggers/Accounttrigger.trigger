trigger Accounttrigger on Account (before insert, after insert) {

  public static void insertMethod(List<Account> newlist){

for(Account acc : newlist){

  if(acc.Rating == 'Hot'){

    acc.Description = 'New inserted column';
    
  }
}

  }





}