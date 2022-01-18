trigger task_AccountStatus on Account (before insert) {
    for (Account acc: trigger.new){
        if(acc.Active__c!='Yes'){
            acc.Active__c.adderror('Account Status should be always active for '+acc.Name);
        }
    }
}