trigger taskCreated on Task(before insert, after insert) {
  if (Trigger.isInsert && Trigger.isBefore) {
    for (Task taskRecord : Trigger.New) {
      taskRecord.Priority = 'High';
    }
  }

  if(Trigger.isInsert && Trigger.isAfter){
    taskTriggerHandler.TaskTriggerMethod(Trigger.New);
  }


}
