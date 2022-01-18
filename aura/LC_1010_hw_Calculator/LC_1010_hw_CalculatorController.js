({
    
	callme : function(component, event, helper) {
        var exp=component.find("i3").get("v.value");
		var evt=event.getSource();
        var bid=evt.getLocalId();
        if(bid == "cl")
        {
            component.find("i3").set("v.value","");
        }
        else if (bid != "=")
        {
            var exp = component.find("i3").set("v.value",exp+bid);
        }
        else if (bid == "=")
        {
            var exp = component.find("i3").set("v.value",eval(exp));
        }
        
	}
})