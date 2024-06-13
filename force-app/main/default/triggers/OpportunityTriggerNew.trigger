trigger OpportunityTriggerNew on Opportunity(after delete, after update) {
  if (Trigger.isDelete && Trigger.isAfter) {
    TriggerHandlerClassTwo.TriggerHandlerAfterDelete(Trigger.Old);
  }

  if (Trigger.isUpdate && Trigger.isAfter) {
    TriggerHandlerClassThree.TriggerHandlerMethodThree(Trigger.New);
  }
}
