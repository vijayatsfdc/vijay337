({
	search : function(component, event, helper) {
		var srtxt = component.get("v.srt");
        var action = component.get("c.getAccount");
        action.setParams({"Searchtext":srtxt});
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS')
            {
                var res = response.getReturnValue();
                if (res != 'NoData')
                {
                    var evt = $A.get("e.c:LE_1028_Eg1_AppEvent");
                    evt.setParams({"accid":res});
                    evt.fire();
                }
            }
        });
        $A.enqueueAction(action);
	}
})