public class CL_1019_Eg3_LRetrieveAcc {
	@AuraEnabled
    Public Static List<Account> getmyaccount(String searchtext)
    {
        String Q = 'select Id, Name, Phone, Fax, Industry, Rating from Account where Name like \'%' + searchtext + '%\'';
        List <Account> accounts = Database.query(Q);
        Return accounts;            
    }
}