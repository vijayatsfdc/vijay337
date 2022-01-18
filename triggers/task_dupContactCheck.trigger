trigger task_dupContactCheck on Contact (before insert) {
    set<String> conAccId = new set<String>();
    map<String,Contact> mapCon = new map<String,Contact>();
    for (Contact con: trigger.new){
        conAccId.add(con.AccountId);
    }
    List<Contact> lstcon = [select AccountId,lastname from Contact where AccountId in: conAccId];
    
    for (Contact cont : lstcon){
        mapCon.put(cont.AccountId+cont.lastname,cont);
    }
    
    for (Contact con: trigger.new){
        if(mapCon.containskey(con.AccountId+con.lastname)){
            con.adderror('Contact already present under account with this name');
        }
    }
    
}