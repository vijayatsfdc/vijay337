({
	clickme : function(component, event, helper) {
        var evt = $A.get("e.c:LE_1027_Eg1_AppEvent");
        evt.fire();
	},
    eventme: function(component, event, helper) {
        alert('Hello Sir, I am from ChandaNagar');
    }
})