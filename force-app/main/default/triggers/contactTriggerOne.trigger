trigger ContactTriggerOne on Contact(before insert) {
  if (Trigger.isInsert && Trigger.isBefore) {
    triggerHandlerClassTwo.TriggerHandlerMethod(Trigger.New);
  }

}
