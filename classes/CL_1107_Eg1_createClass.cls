public class CL_1107_Eg1_createClass {
	@AuraEnabled
    Public Static void createClassData(class__c cls){
        insert cls;
    } 
}