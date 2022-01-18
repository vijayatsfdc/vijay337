({
	clickme : function(component, event, helper)
    {
        var a ='32';
		alert('Hi, This is my first Controller. I was called on Button Click');
        var nm = component.get("v.empnm")
        alert(nm)
        component.set("v.empnm","Raj");
        component.set("v.age",a);
        component.set("v.sal","25000.01");
        
        
        
	}
})