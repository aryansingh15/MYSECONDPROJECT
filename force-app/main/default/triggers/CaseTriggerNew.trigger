trigger CaseTriggerNew on Case(before delete) {
  if (Trigger.isBefore && Trigger.isDelete) {
    CaseTriggerNewHandler.CaseTriggerBeforeDelete(Trigger.old);
  }

}
