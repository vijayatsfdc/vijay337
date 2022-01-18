({
	delme : function(component, event, helper) {
        component.find("deleteRecord").deleteRecord($A.getCallback(function(DeleteRecord){}));
	}
})