({
	dispOpties : function(component, event, helper) {
		var clm = [
            {label:'Opp Name', fieldName:'Name', type:'text'},
            {label:'Opp Amount', fieldName:'Amount',type:'currency'},
            {label:'Stage', fieldName:'StageName',type:'text'}
        ];
        component.set("v.col",clm);
        var acid =event.getParam("accid");
        var action =component.get("c.getOpties");
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