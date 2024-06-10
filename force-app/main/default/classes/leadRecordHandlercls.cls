    public with sharing class leadRecordHandlercls {
    public static void leadRecordHandlerclstwo(List<Lead> newList) {
        List<Task> newTask = new List<Task>();
        for (Lead leadRecord : newList) {
        Task taskValue = new Task();
        taskValue.WhoId = leadRecord.Id;
        taskValue.OwnerId = leadRecord.OwnerId;
        taskValue.Status = 'Completed';
        taskValue.Priority = 'High';
        taskValue.Subject = 'Split revenue';
        newTask.add(taskValue);
        }
        if (!newTask.isEmpty()) {
        insert newTask;
        }
    }

    public static void triggerHandlerBeforeUpdate(
        List<Opportunity> newList,
        Map<Id, Opportunity> oldMap
    ) {
        System.debug('triggerHandlerBeforeUpdate');

        //for (Id oppId : newMap.keySet()) {
        for (Opportunity opp : newList) {
        // System.debug('id:' + oppId);

        if (opp.StageName != oldMap.get(opp.Id).StageName) {
            //System.debug('Probability:' + newMap.get(oppId).Probability);
            //System.debug('ExpectedRevenue:' + newMap.get(oppId).ExpectedRevenue);

            // newMap.get(oppId).Amount =
            //   (newMap.get(oppId).ExpectedRevenue) * (newMap.get(oppId).Probability);

            opp.Amount = (opp.ExpectedRevenue) * (opp.ExpectedRevenue);
        }
        }
    }
    }
