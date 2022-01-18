trigger contactStatusUpdate on Account (after update) {

    set<Id> accId = new set<Id>(); 

    for (Account acc : trigger.new){
        if ( trigger.oldmap.get(acc.id).Active__c == 'No' && acc.Active__c == 'Yes' ){
            accId.add(acc.Id);
        }
    }
    

    List<Contact> lscn = [select Id,lastname,Status__c from Contact where AccountId in: accId ];
    
    for (Contact con: lscn){
        con.Status__c = 'Pending';
        update con;
    }
    
}