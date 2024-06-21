public with sharing class taskTriggerHandler {
  public static void taskTriggerMethod(List<Task> newList) {
    Map<Id, Integer> conCountMap = new Map<Id, Integer>();
    for (Task taskRec : newList) {
      if (String.valueOf(taskRec.whoId).StartsWith('003')) {
        if (conCountMap.ContainsKey(taskRec.WhoId)) {
          Integer countVar = conCountMap.get(taskRec.whoId) + 1;
          conCountMap.put(taskRec.whoId, countVar);
        } else {
          conCountMap.put(taskRec.whoId, 1);
        }
      }
    }

    List<Contact> ConRecordToUpdate = new List<Contact>();

    List<Contact> conRecords = [
      SELECT id, Number_of_task_field__c
      FROM Contact
      WHERE Id IN :conCountMap.keySet()
    ];

    for (Contact con : conRecords) {
      if (con.Number_of_task_field__c != null) {
        con.Number_of_task_field__c =
          con.Number_of_task_field__c + conCountMap.get(con.Id);
      } else {
        con.Number_of_task_field__c = conCountMap.get(con.Id);
      }
      ConRecordToUpdate.add(con);
    }
    if (!ConRecordToUpdate.isEmpty()) {
      update ConRecordToUpdate;
    }
  }
}
