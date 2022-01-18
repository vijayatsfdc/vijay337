({
	callme : function(component, event, helper) {
        //Step1 :: Call/get Server Side Controller method
        var action = component.get("c.myAcc");
        
        //Step2 :: Pass/Set the parameter (Lightning (ClientSideController) to APEX(ServerSideController))
        //We are not doing it now
        
        //Step3 :: Invoke/Initiate/CallBack the method
        
        action.setCallback(this,function(response)
        {
            var state = response.getState();
	        //We have 4 states for a method: NEW, INPROGRESS, SUCCESS, ERROR
            if (state=='SUCCESS')
            {
                var res = response.getReturnValue();
                component.set("v.acc",res);
            }
            else
            {
                alert('Something is wrong, Please check');
            }
        })
        
        //Step 4 :: Enqueue/Push/Execute the method
        $A.enqueueAction(action);
}
})