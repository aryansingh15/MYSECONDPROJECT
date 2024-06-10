trigger contactTriggerOne on Contact(before insert) {
  if (Trigger.isInsert && Trigger.isBefore) {
    triggerHandlerClassTwo.TriggerHandlerMethod(Trigger.New);
    triggerHandlerClassTwo.TriggerHandlerBeforeInsert(Trigger.New);
  }
}
