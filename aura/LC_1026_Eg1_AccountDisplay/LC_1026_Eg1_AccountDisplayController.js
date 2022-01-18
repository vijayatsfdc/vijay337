({
	loadme : function(component, event, helper) {
		var clm = [
            {label:'AccountName', fieldName:'Name'},
            {label:'AccountPhone', fieldName:'Phone'},
            {label:'AccountFax', fieldName:'Fax'},
            {label:'AccountIndustry', fieldName:'Industry'},
        ];
        component.set("v.col",clm);    
	},
    showme : function(component, event, helper) {
		var acctdc = event.getParam("acc");
        var acctdcn = component.get("v.acctd");
        acctdcn.push(acctdc);    
        component.set("v.acctd",acctdcn);    
	}
})