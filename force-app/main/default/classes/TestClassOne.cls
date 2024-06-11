public with sharing class TestClassOne {
    public static void TestClassOneTwo() {

        List <Account> accList = [SELECT Id, Name, 
        (SELECT Id, FirstName, LastName, Email, Phone 
         FROM Contacts)
    FROM Account];
    }
    Map<Id, Account> newMap = Map<Id, Account>();

    for(Account acc : accList){
        for(Contact con : )
    }
}