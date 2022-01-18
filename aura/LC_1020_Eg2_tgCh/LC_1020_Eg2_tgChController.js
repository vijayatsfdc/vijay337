({
	callChild : function(component, event, helper) {
		var nmcc = event.getParam('empnm');
        component.set ("v.nmc",nmcc);
	}
})