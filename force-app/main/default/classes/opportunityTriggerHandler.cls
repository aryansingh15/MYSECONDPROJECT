public with sharing class opportunityTriggerHandler {
  public static void handleActivityAfterUpdate(List<Opportunity> newRecords) {
    List<Task> taskList = new List<Task>();
    for (Opportunity opp : newRecords) {
      if (opp.StageName == 'Closed won') {
        Task taskRecord = new task();
        taskRecord.Priority = 'High';
        taskRecord.OwnerId = opp.OwnerId;
        taskRecord.Description = 'Please split the revenue between the team mates';
        taskRecord.Status = 'Not started';
        taskRecord.Subject = 'Split revenue';
        taskRecord.WhatId = opp.Id;
        taskList.add(taskRecord);
      }
    }

    if (!taskList.isEmpty()) {
      insert taskList;
    }
  }
}
