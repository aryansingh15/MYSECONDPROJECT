trigger AccountTriggerTwo on Account(
  before update,
  after update,
  after insert,
  before delete
) {
  if (Trigger.isUpdate && Trigger.isBefore) {
    TriggerHandlerClassTwo.triggerHandlerBeforeUpdate(
      Trigger.newMap,
      Trigger.oldMap
    );
  }

  if (Trigger.isUpdate && Trigger.isAfter) {
    TriggerHandlerClassTwo.triggerHandlerAfterUpdate(
      Trigger.New,
      Trigger.oldMap
    );
  }

  if (Trigger.isInsert && Trigger.isAfter) {
    TriggerHandlerClassTwo.triggerHandlerAfterInsert(Trigger.New);
  }

}
