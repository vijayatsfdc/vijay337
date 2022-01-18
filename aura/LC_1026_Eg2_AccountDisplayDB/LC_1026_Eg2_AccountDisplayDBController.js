({
	loadme : function(component, event, helper) {
        var col = [
            {label:'Account Name', fieldName:'Name'},
            {label:'Account Phone', fieldName:'Phone'},
            {label:'Account Fax', fieldName:'Fax'},
            {label:'Account Industry', fieldName:'Industry'}
        ];
        component.set("v.col",col);	
	},
    
    displayme : function(component, event, helper) {
        var accid = event.getParam("id");
        var action=component.get("c.getAccounts");
        action.setParams({"AccId":accid});
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS')
            {
                var res = response.getReturnValue();
                //var cacc = component.get("v.acc");
                //res.push(cacc);
                component.set("v.acc",res);
            }
        });
        $A.enqueueAction(action);
    }
})