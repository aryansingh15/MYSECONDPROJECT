trigger leadTrigger2 on Lead (before insert, before update) {
    for(Lead LeadRecord : Trigger.new){
        if(String.isBlank(leadRecord.Rating)){
            leadRecord.Rating ='Warm';
        }
    }
    System.debug('Lead trigger two is executing');
}