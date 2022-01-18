public class CL_1019_Eg1_CreateAccount {
    @AuraEnabled
    Public Static String createAcc(Account acc){
        String result;
        Try
        {
        	insert(acc);
            result = ('All good and Id of added Account is ' +acc.Id);
        }
        catch(Exception e)
        {
            result = (e.getMessage());
        }
        Return result;
    }

}