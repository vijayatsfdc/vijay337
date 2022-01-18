global class CL_1108_ExecuteScheduleBatchClass implements Schedulable{
    
    global void execute(SchedulableContext sc ){
        List<class__c> lstcls = new List<class__c>();
        for (class__c cl: [Select Name from class__c where Name like '%test%']){
            lstcls.add(cl);
        }
        if(lstcls !=NULL && lstcls.size()>0){
            delete lstcls;
        }
    }
}