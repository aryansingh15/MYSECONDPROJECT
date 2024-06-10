  trigger deletetrigger on Account (before delete) {

    if(Trigger.isDelete){

      if(Trigger.isBefore){

        Accountdelete.Accdelete(Trigger.Old);

      }

        else if(Trigger.isAfter){

        }
      }
    }



