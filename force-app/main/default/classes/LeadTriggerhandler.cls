public class LeadTriggerhandler {
    
    public static void beforeInsertHandler(List<Lead> newRecords){
         for(Lead leadRecord : newRecords){
                if(String.isBlank(leadRecord.LeadSource)){
                    leadRecord.LeadSource = 'Other';
                }
                // validation rules on Industry fields
                if(String.isBlank(leadRecord.Industry)){
                    leadRecord.addError('The industry field cannot be blank');
                }
            }
    }
    
}