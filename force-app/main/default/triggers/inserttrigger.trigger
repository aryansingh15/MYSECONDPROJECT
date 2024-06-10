trigger inserttrigger on Account (before insert, after insert) 
    
    {
        if(Trigger.isInsert)
        {
            if(Trigger.isBefore)
            {
                triggerclass.insertMethod(Trigger.New);
                
                
            }  
            
            else if(Trigger.isAfter){
                
                //commented
            }
            
        }
    }