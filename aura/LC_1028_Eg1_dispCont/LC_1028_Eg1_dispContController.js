({
	dispCont : function(component, event, helper) {
		var clm = [
            {label:'First Name', fieldName:'FirstName',type:'text'},
            {label:'Last Name', fieldName:'LastName',type:'text'},
            {label:'Phone', fieldName:'Phone',type:'text'}
        ];
        component.set("v.col",clm);
        var acid =event.getParam("accid");
        var action =component.get("c.getContact");
        action.setParams({"aid":acid});
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS')
            {
                var res = response.getReturnValue();
                component.set("v.dat",res);
            }
        });
        $A.enqueueAction(action);
	}
})