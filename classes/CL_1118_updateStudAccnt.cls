public class CL_1118_updateStudAccnt {
	@AuraEnabled
    public static void updatestudAcc(StudentOfClass__c sc){
        Account acc = new Account();
        acc.Name =sc.Suffix__c +sc.First_Name__c+' '+sc.Middle_Name__c+' '+sc.Last_Name__c;
        sc.Name=acc.Name;
        insert (sc);
        insert (acc);
    }
}