trigger leadObjectTrigger on Lead(before update) {
  if (Trigger.isUpdate && Trigger.isBefore) {
    for (Lead leadTrigger : Trigger.New) {
      leadTrigger.Status = 'Working-Contacted';
    }
  }
}
