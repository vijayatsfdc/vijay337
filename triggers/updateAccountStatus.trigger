trigger updateAccountStatus on Contact (after update,after insert) {
    
    updateAccStatusTrig__c trig = updateAccStatusTrig__c.getinstance('0055j000000lPPY');
    system.debug('CustomSettings: Value of trig.DeactivateTrigger__c '+ trig.DeactivateTrigger__c );
    if (trig.DeactivateTrigger__c == False){
        set<Id> accId = new set<Id>();
    
        for (Contact con: trigger.new){
            if (trigger.isUpdate){
                if( trigger.oldmap.get(con.id).Status__c != 'Pending' && con.Status__c == 'Pending' ){
                    accId.add(con.AccountId);
                }
            }
            else{
                if (con.Status__c == 'Pending'){
                    accId.add(con.AccountId);
                }
            }
            
        }
        
        List<Account> Accounts = [select Id,Active__c from Account where Id in: accId];
        
        for (Account acc: Accounts){
            acc.Active__c = 'Yes';
            update acc;
        }
    }
    
    
    

}