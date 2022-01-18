({
	searchme : function(component, event, helper) {
		var st = component.get ("v.stxt");
        
        var action = component.get ("c.getmyaccount")
        action.setParams({"searchtext":st});
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS')
            {
                var res = response.getReturnValue();
                component.set("v.acc",res)
            }
        });
        $A.enqueueAction(action);
	},
    colme : function(component, event, helper) {
  		var colm = [
            {label:"Acc Name", fieldName:"Name"},
            {label:"Acc Phone", fieldName:"Phone", type:"phone"},
            {label:"Acc Industry", fieldName:"Industry", type:"text"},
            {label:"Acc Rating", fieldName:"Rating", type:"text"}
        ];      
        component.set("v.col",colm);
    }
})