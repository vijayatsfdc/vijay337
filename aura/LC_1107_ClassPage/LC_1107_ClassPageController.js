({
	clickme : function(component, event, helper) {
		var cl = component.get("v.cls");
        var action = component.get("c.createClassData");
        action.setParams({"cls":cl});
        action.setCallback(this,function(response){
        	var state = response.getState();
            if (state == 'SUCCESS'){
                cl = response.getReturnValue();
            }
        });
        $A.enqueueAction(action);
	}
})