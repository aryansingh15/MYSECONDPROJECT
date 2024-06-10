trigger OpportunityTriggerNew on Opportunity(after delete) {
  TriggerHandlerClassTwo.TriggerHandlerAfterDelete(Trigger.Old);

}
