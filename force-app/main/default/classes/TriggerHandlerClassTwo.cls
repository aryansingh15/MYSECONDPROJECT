public with sharing class TriggerHandlerClassTwo {
  public static void triggerHandlerMethod(List<Contact> newList) {
    for (Contact con : newList) {
      if (con.AccountId == null) {
        con.addError('can not create Contact without Account');
      }
    }
  }

  public static void triggerHandlerBeforeUpdate(
    Map<Id, Account> newMap,
    Map<Id, Account> oldMap
  ) {
    //for (Account anc : ancList) {
    for (Id ancId : newMap.keySet()) {
      if (
        oldMap.get(ancId).Industry == 'Agriculture' &&
        oldMap.get(ancId).Type == 'Prospect'
      ) {
        if (
          oldMap.get(ancId).Ownership != newMap.get(ancId).Ownership &&
          newMap.get(ancId).Ownership == 'Private'
        ) {
          newMap.get(ancId).addError('Can not update the record as private');
        }
      }
    }
  }

  public static void triggerHandlerAfterUpdate(
    List<Account> newList,
    Map<Id, Account> oldMap
  ) {
    Map<Id, String> mapListRecord = new Map<Id, String>();

    for (Account acc : newList) {
      if (acc.Website != oldMap.get(acc.Id).Website) {
        mapListRecord.put(acc.Id, acc.Website);
      }
    }

    if (mapListRecord.KeySet().size() > 0) {
      List<Contact> conUpdateList = new List<Contact>();
      List<Contact> conRecords = [
        SELECT Id, AccountId, Website__c
        FROM Contact
        WHERE AccountId IN :mapListRecord.KeySet()
      ];

      for (Contact con : conRecords) {
        con.Website__c = mapListRecord.get(con.AccountId);
        conUpdateList.add(con);
      }
      if (!conUpdateList.isEmpty()) {
        update conUpdateList;
      }
    }
  }

  public static void triggerHandlerAfterInsert(List<Account> newList) {
    List<Contact> conList = new List<Contact>();
    for (Account acc : newList) {
      if (acc.Create_N_Contacts__c != null) {
        System.debug('Create_N_Contacts__c::' + acc.Create_N_Contacts__c);
        for (Integer i = 0; i < acc.Create_N_Contacts__c; i++) {
          Contact con = new Contact();
          con.LastName = acc.Name + i;
          con.AccountId = acc.Id;
          conList.add(con);
          System.debug('Name::' + con.LastName);
        }
      }
    }

    if (!conList.isEmpty())
      insert conList;
  }

  public static void triggerHandlerBeforeDelete(List<Lead> oldList) {
    for (Lead leadList : oldList) {
      if (leadList.Status == 'Working - Contacted') {
        leadList.addError(
          'Can not delete the lead when the status is Working-Contacted '
        );
      }
    }
  }
}
