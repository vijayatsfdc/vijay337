({
	colme : function(component, event, helper) {
		var colm = [
            {type:"button", typeAttributes:{label:'Waitlist', disabled:{fieldName:"ReserveList__c"},name:'Waitlist' }},
            {type:"button", typeAttributes:{label:'ReserveNow', disabled:{fieldName:"WaitingList__c"},name:'ReserveNow' }},
            {label:"Class Date", fieldName:"Class_Date__c"},
            {label:"Course Type", fieldName:"Course__c"},
            {label:"Dealer", fieldName:"Dealer__c"},
            {label:"Open Seats", fieldName:"Open_Seats__c"},
            {label:"Class Fee", fieldName:"Class_Fee__c"}
        ];      
        component.set("v.col",colm);
	},
    searchme : function(component, event, helper) {
        var st = component.get("v.srtxt");
        console.log('Value of the search text'+ st);
        var action = component.get("c.getmyclasses");
        action.setParams({"searchtext":st});
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state == 'SUCCESS')
            {
                var res = response.getReturnValue();
                component.set("v.cls",res);
            }
        });
        $A.enqueueAction(action);
    },
    rowaction : function(component, event, helper) {
        var recId = event.getParam('row').Id;
        var actionName = event.getParam('action').name;
        if (actionName == 'Waitlist'){
            alert('Slots are filled for this Class.');
        }
        else if (actionName == 'ReserveNow'){
            var evt = $A.get("e.force:navigateToComponent");
            evt.setParams({
                componentDef: "c:LC_1117_SaveStudent"
            });
            evt.fire();
        }
    }
})