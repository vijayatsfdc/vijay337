public class CL_1014_Eg3_SSC_AccByName 
{
    @AuraEnabled
    Public Static Account getMyAcc(String searchtext)
    {
     	Return [select Id, Name, Phone, Fax, Industry, Rating from Account where Name=:searchtext ] ;
    }
}