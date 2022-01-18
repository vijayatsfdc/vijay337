public class CL_1014_Eg2_AccountDataPull {
 
    @AuraEnabled
    Public Static Account myAcc(){
        Return [Select Id, Name, Fax, Rating, Industry from Account limit 1];
    }
    
    @AuraEnabled
    Public Static Contact myCon(){
        Return [Select FirstName, LastName from Contact limit 1];
    }

}