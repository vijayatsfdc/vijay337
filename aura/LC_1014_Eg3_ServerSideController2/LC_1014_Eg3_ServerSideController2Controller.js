({
	searchme : function(component, event, helper) {
		var st = component.get('v.srtxt');
        
        //Call method
        var action = component.get("c.getMyAcc");
        
        //Pass Parameters
        action.setParams({"searchtext":st});
        
        //Invoke/CallBack method
        action.setCallback(this,function(response){
            var state=response.getState();
            if (state == 'SUCCESS')
            {
                var res=response.getReturnValue();
                component.set("v.Acc",res)
            }
        });
        
        //Enqueue action
        $A.enqueueAction(action);
	}
})