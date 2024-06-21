public with sharing class wireDemoClassSalesforce {
  @AuraEnabled(cacheable=true)
  public static List<Football_Players__c> getPlayerList() {
    List<Football_Players__c> playerDetails = [
      SELECT Id, Name
      FROM Football_Players__c
    ];
    return playerDetails;
  }
}
