public class HelloWord{
   String greeting ='Hello';
   String Name = 'Aryan';

   
   
   public string getDays(Integer dayNumber){
   
   string dayString = '';
   Switch on dayNumber{
   
   when 0{
   
      dayString ='Monday';
      }
      
      when 1{
   
      dayString ='Tuesday';
      }
      
      when 2{
   
      dayString ='Wednesday';
      }


       when 3{
   
      dayString ='Thursday';
      }
      
      when 4{
   
      dayString ='Friday';
      }
      
      when 5{
   
      dayString ='Saturday';
      }
     
     when 6{
   
      dayString ='Sunday';
      }
      when else {
      
       dayString ='Invalid number';

}
}
return dayString;
}

}