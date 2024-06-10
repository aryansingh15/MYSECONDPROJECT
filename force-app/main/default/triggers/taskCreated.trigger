trigger taskCreated on Task(before insert) {
  if (Trigger.isInsert && Trigger.isBefore) {
    for (Task taskRecord : Trigger.New) {
      taskRecord.Priority = 'High';
    }
  }

}
