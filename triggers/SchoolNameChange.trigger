trigger SchoolNameChange on School__c (after update) {

    for (School__c sc: trigger.new){
        if (Trigger.oldmap.get(sc.id).Name != sc.Name){
            SchoolNameUpdate snu = new SchoolNameUpdate();
            snu.sendTask(sc);
        }
        
        
    }

}