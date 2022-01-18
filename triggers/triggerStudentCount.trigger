trigger triggerStudentCount on Student__c (after insert, after delete) {
    
    Set<String> scl = new Set<String>();
    Map<Id,integer> school= new Map<Id,integer>();
    
    
    if(trigger.isinsert){
        for (Student__c st: trigger.new){
           scl.add(st.Studying_at__c);
           system.debug('School Name is '+scl);
           if(school.containsKey(st.Studying_at__c)==true){
               school.put(st.Studying_at__c,school.get(st.Studying_at__c)+1);    
           }
           else{
               school.put(st.Studying_at__c,1);
               system.debug('School Name in Else Condition '+school);
           }
        }
    }
    
    if(trigger.isdelete){
        for (Student__c st: trigger.old){
           scl.add(st.Studying_at__c);
           system.debug('School Name is '+scl);
           if(school.containsKey(st.Studying_at__c)==true){
               school.put(st.Studying_at__c,school.get(st.Studying_at__c)+1);    
           }
           else{
               school.put(st.Studying_at__c,1);
               system.debug('School Name in Else Condition '+school);
           }
        }
    }
    
    
    system.debug('School name out of loop is '+scl);
    List<School__c> sc = [select Id,Name,TriggerCount__c from School__c where Id in:scl];
    system.debug('School List '+sc);
    
    
    if(trigger.isinsert){
        for (School__c scl: sc){
            system.debug('School Name after inserting'+scl);
            system.debug('School Name after inserting'+ scl.TriggerCount__c +'  ' + school.get(scl.Id));
            scl.TriggerCount__c =scl.TriggerCount__c + school.get(scl.Id);
            system.debug('TriggerCount for school is '+scl.TriggerCount__c);            
            update scl;
        }
    }
    
    if(trigger.isdelete){
        for (School__c scl: sc){
            scl.TriggerCount__c =scl.TriggerCount__c - school.get(scl.Id);
            update scl;
        }
    }    
    

}