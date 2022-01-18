public class CL_1015_SSC_SearchContact {
    @AuraEnabled
    Public Static Contact myCon(String searchtext){
        Return [Select FirstName, LastName, Title, Department, Phone, Fax from Contact where FirstName=:searchtext];
    }

}