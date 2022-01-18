({
	callme : function(component, event, helper) {
		var accnt = component.get("v.aa");
        
        var action = component.get("c.createAcc");		//Step1- calling action
        
        action.setParams({"acc":accnt});				//Step2 - Setting parameters
        
        action.setCallback(this,function(response){		//Step3 - Action callback
            var res = response.getState();
            if(res == 'SUCCESS')
            {
                var r = response.getReturnValue();
                alert(r);
            }
            else
            {
                alert('Tough time connecting to ServerSideController from Lightning Controller')
            }
        })
        
        $A.enqueueAction(action);						//Step4 - Enqueue Action
        
	}
})