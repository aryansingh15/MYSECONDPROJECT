trigger leadTriggerone on Lead(before update) {
  if (Trigger.isUpdate && Trigger.isBefore) {
    for (Lead leadRecord : Trigger.New) {
      if (leadRecord.Industry == 'Healthcare') {
        leadRecord.Source = 'Purchased List';
        leadRecord.SICCode__c = '1100';
        leadRecord.Primary__c = 'Yes';
      }
    }
  }

}
