trigger ContactTriggers on Contact(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete
) {
  if (Trigger.isInsert && Trigger.isBefore) {
    //code block
  }
  if (Trigger.isInsert && Trigger.isAfter) {
    //code block
  }

  if (Trigger.isUpdate && Trigger.isBefore) {
    //code block
  }
  if (Trigger.isUpdate && Trigger.isAfter) {
    //code block
  }

  if (Trigger.isDelete && Trigger.isBefore) {
    //code block
  }
  if (Trigger.isDelete && Trigger.isAfter) {
    //code block
  }
}
