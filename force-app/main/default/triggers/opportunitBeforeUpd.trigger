trigger opportunitBeforeUpd on Opportunity(before update) {
  if (Trigger.isUpdate && Trigger.isBefore) {
    leadRecordHandlercls.triggerHandlerBeforeUpdate(
      Trigger.new,
      Trigger.oldMap
    );
  }

}
