public class CL_1116_RiderCourse {
	@AuraEnabled
    Public Static List<class__c> getmyclasses(String searchtext)
    {
        Return [select Class_Date__c, Course__c, Dealer__c, Open_Seats__c, Class_Fee__c,MaxSlot__c,WaitingList__c,ReserveList__c from class__c where Class_Date__c>=Today and (Postal_Code__c =: searchtext or City__c =: searchtext or State__c=: searchtext) ];
    }
}