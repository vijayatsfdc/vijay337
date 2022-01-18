({
	searchme : function(component, event, helper) {
        var cst = component.get('v.csrt');
        var fl = component.get('v.flag')
        fl=false;
        //Call method
        var action =component.get("c.myCon");
        
        //Set Parameter
        action.setParams({"searchtext":cst});
        
        //Invoke method
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS'){
                var res = response.getReturnValue();
                component.set("v.Con",res);
                fl=true;
                component.set("v.flag",fl);
            }
        })
        
        //EnqueueMethod
        $A.enqueueAction(action);
		
	}
})