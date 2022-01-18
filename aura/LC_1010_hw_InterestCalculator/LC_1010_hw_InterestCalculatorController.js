({
	cal : function(component, event, helper) {
        var p=component.find("Amt").get("v.value");
        var t=component.find("Per").get("v.value");
        var r=component.find("IR").get("v.value");
		var intAcc = p * t * r / 100;
        var AmtAcc = parseFloat(p) + parseFloat(intAcc);
        component.find("Interest").set("v.value",intAcc);
        component.find("Returns").set("v.value",AmtAcc)
	},
    clr : function(component, event, helper) {
        component.find("Amt").set("v.value","");
        component.find("Per").set("v.value","");
        component.find("IR").set("v.value","");
        component.find("Interest").set("v.value","");
        component.find("Returns").set("v.value","")
	}
})