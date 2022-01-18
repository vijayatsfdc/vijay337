({
	addme : function(component, event, helper) {
		var a = component.find("i1").get("v.value");
        var b = component.find("i2").get("v.value");
        var c = parseInt(a) +parseInt(b);
        component.set("v.flag",true)
        component.find("rs").set("v.value",c);
	},
    callme : function(component, event, helper) {
        var evt = event.getSource();
        var bid = evt.getLocalId();
        
		var a = component.find("i1").get("v.value");
        var b = component.find("i2").get("v.value");
        
        if (bid =='sb')
        {
            var c = parseInt(a) -parseInt(b);
        }
        else if (bid =='ml')
        {
            var c = parseInt(a) *parseInt(b);
        }
        else if (bid =='cl')
        {
            component.find("i1").set("v.value","");
        	component.find("i2").set("v.value","");
            component.find("rs").set("v.value","");
        }
        if(c>0)
        {
            component.set("v.flag",true)
            component.find("rs").set("v.value",c);
        }
	}
})