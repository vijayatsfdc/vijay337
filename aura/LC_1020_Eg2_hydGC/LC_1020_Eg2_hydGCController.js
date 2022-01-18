({
	callme : function(component, event, helper) {
		var nmcgc = component.get("v.nmgc");
        var evt = component.getEvent("secondy");
        evt.setParams({"empnm":nmcgc});
        evt.fire();
        
	}
})