({
	Addme : function(component, event, helper) {
        var cacc= component.get("v.acc")
		var action = component.get("c.insertAccount");
        action.setParams({"acc":cacc});
        action.setCallback(this,function(response){
			var state = response.getState();
            if (state =='SUCCESS')
            {
                var res = response.getReturnValue();
                var acEvent = component.getEvent("VijayDB");
                acEvent.setParams({"id":res});
                acEvent.fire();
            }
         });
        $A.enqueueAction(action);
	}
})