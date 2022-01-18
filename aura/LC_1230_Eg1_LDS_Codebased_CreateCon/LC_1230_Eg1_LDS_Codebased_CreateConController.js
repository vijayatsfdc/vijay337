({
	invokeme : function(component, event, helper) {
        component.find("rcloader").getNewRecord(
        "Contact",
        null,
        false,
            $A.getCallback(function(){
                var AccountId = component.get("v.recordId");
                component.set("v.con.AccountId",AccountId);
            })
        )
		
	},
    callme : function(component, event, helper) {
        component.find("rcloader").saveRecord($A.getCallback(function(saveResult){
            alert('Contact created Succesfully');
        }));
    }
})