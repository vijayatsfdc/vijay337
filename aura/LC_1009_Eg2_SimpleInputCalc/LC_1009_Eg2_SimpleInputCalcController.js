({
	addme : function(component, event, helper) {
		var a = component.get("v.aval");
        var b = component.get("v.bval");
        var c = parseInt(a)+parseInt(b);
        component.set("v.res",c);
	},
    subme : function(component, event, helper) {
		var a = component.get("v.aval");
        var b = component.get("v.bval");
        var c=parseInt(a)-parseInt(b);
        component.set("v.res",c);
	},
    mulme : function(component, event, helper) {
		var a = component.get("v.aval");
        var b = component.get("v.bval");
        var c=parseInt(a)*parseInt(b);
        component.set("v.res",c);
	},
    clearme : function(component, event, helper) {
		component.set("v.aval","");
        component.set("v.bval","");
        component.set("v.res","");
	}
    
})