({
	submitme : function(component, event, helper) {
        alert('Entered function');
		var std = component.get('v.Stud');
        alert('Student record'+std.City__c + std.Country__c+ std.Date_of_Birth__c +std.EMAIL__c +std.First_Name__c +std.Gender__c + std.Last_Name__c +std.Middle_Name__c+ std.Postal_Code__c +std.Primary_Phone__c+std.SELECT__c +std.State__c+std.STREET_ADDRESS__c+std.Suffix__c+std.Working_in_Military__c);
        var action = component.get("c.updatestudAcc");
        action.setParams({"sc":std});
        action.setCallback(this,function(response){});
        $A.enqueueAction(action);
	}
})