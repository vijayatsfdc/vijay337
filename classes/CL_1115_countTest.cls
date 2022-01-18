global class CL_1115_countTest{
    global void updateCount(){
        updateAccStatusTrig__c trig = updateAccStatusTrig__c.getinstance('0055j000000lPPY');
        system.debug('Value of Trig::::Vijay' + trig);
        if (trig.CountofTest__c == NULL){
            trig.CountofTest__c =1;
            system.debug('Value of Trig::::Vijay' + trig.CountofTest__c);
        }
        else{
            trig.CountofTest__c = trig.CountofTest__c +1;
            system.debug('Value of Trig::::Vijay' + trig.CountofTest__c);
        }
        update trig;
    }
}