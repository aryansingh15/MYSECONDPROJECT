trigger LeadTriggerNew on Lead(before delete) {
  if (Trigger.isDelete && Trigger.isBefore) {
    TriggerHandlerClassTwo.triggerHandlerBeforeDelete(Trigger.Old);
  }
}
