global class CL_1107_BatchClass implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Name from class__c where Name =: label.value]);
    }

    global void execute(Database.BatchableContext bc, List<class__c> cls){
        if(cls!=NULL && cls.size()>0){
            delete cls;
        }    
    }
    
    global void finish(Database.BatchableContext bc){}
}