trigger opportunityTriggerOne on Opportunity(after update) {
  if (Trigger.isAfter && Trigger.isUpdate) {
    opportunityTriggerHandler.handleActivityAfterUpdate(Trigger.New);
  }
}
