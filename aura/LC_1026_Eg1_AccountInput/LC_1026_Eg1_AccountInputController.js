({
	saveme : function(component, event, helper) {
		var actct = component.get("v.act");
        var actevent = component.getEvent("vijayevent");
        actevent.setParams({"acc":actct})
        actevent.fire();
	}
})