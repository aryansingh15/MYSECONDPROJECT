trigger leadRecordTrigger on Lead(after update) {
  if (Trigger.isInsert && Trigger.isAfter) {
    leadRecordHandlercls.leadRecordHandlerclstwo(Trigger.New,);
  }
}
