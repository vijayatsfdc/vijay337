public class CL_1026_Eg2_Account {
    @AuraEnabled
    Public Static String insertAccount(Account acc)
    {
        insert acc;
        Return acc.Id;
    }
    
    @AuraEnabled
    Public Static list<Account> getAccounts(String AccId)
    {
        Return [Select Name, Phone, Fax, Industry from Account where id=:AccId];
    }

}