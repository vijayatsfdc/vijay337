({
	gm : function(component, event, helper) {
		component.set("v.Msg1","Good Morning")
        helper.myhelper(component)
	},
    gn : function(component, event, helper) {
		component.set("v.Msg1","Good Evening")
        helper.myhelper(component)
	}
})