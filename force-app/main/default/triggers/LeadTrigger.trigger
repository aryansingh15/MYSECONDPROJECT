trigger LeadTrigger on Lead (before insert, before update, after update) {
    System.debug('Trigger size: ' +Trigger.size);
    System.debug('is Trigger : ' +Trigger.isExecuting);
    System.debug('operation type: ' +Trigger.operationType);
    for(Lead leadRecord : Trigger.new){
        
        // if lead source is blank then make it other
        if(String.isBlank(leadRecord.LeadSource) && (Trigger.isBefore)){
            leadRecord.LeadSource ='Other';
            
      }
        if((leadRecord.Status =='Closed - Converted'|| leadRecord.Status =='Closed - Not Converted') && Trigger.oldMap.get(leadRecord.Id).Status == 'Open - Not Contacted'){
            LeadRecord.Status.addError('you can not direlty closed an open lead record');
        }
        
        //validation rules on industry fields
        if(String.isBlank(leadRecord.Industry) && (Trigger.isInsert)){
            leadRecord.addError('The industry can not be blanked');
        }
    }
     
}