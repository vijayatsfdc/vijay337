trigger AccountInsertTrigger on Account (before insert, before update) {
    
    for (Account acc: trigger.new){

        if(trigger.isInsert){
            acc.TriggeredInsert__c = 'New Insert';
        }
        if (trigger.isUpdate){
            acc.TriggeredInsert__c = NULL;
            acc.TriggeredUpdate__c = 'New Update';
        }
        if(acc.Type =='Other'){
            acc.TriggeredUpdate__c ='Other Update';
        }            
    }

}