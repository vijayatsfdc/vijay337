public class CL_1028_Eg1_AppEv {
	@AuraEnabled
    Public Static String getAccount(String Searchtext)
    {
        String accid;
    	list<Account> acc = [Select Id,Name,Phone,Fax from Account where Name=:Searchtext];
        if (acc.size()==0)
        {
            accid = 'NoData';
        }
        else
        {
        	accid = acc[0].Id;    
        }
        Return accid;
    }
    
    @AuraEnabled
    Public Static list<Contact> getContact(String aid)
    {
        Return [select FirstName,LastName,Phone from Contact where AccountId=:aid];
    }
    
    @AuraEnabled
    Public Static list<Opportunity> getOpties(String aid)
    {
        Return [select Name,Amount,StageName from Opportunity where AccountId=:aid];
    }
}