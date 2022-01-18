({
	clickme : function(component, event, helper) {
		var evt = component.getEvent("firsty");
        evt.fire();
	},
    callme : function(component, event, helper) {
        alert('I am the Grand Child, I clicked the button');
    }
})