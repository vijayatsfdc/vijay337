trigger contactinsertTrig on Contact (before insert) {

    set<String> setconlname = new set<String>();
    set<String> setcontitle = new set<String>();
    set<String> setcondept = new set<String>();
    map<String,Contact> mapCon = new map<String,Contact>();
    
    for (Contact con: trigger.new){
        setconlname.add(con.lastname);
        setcontitle.add(con.Title);
        setcondept.add(con.Department);
    }
    
    List<Contact> lstcon = [select lastname,Title,Department from Contact where lastname in: setconlname and Title in: setcontitle and Department in: setcondept ];
    
    for (Contact con : lstcon){
        mapCon.put(con.lastname+con.Title+con.Department,con);
    }    
    
    for (Contact con: trigger.new){
        if (mapCon.containsKey(con.name+con.Title+con.Department)){
            con.adderror('Name, Title and Department Combination need to be Unique');
        }
    }
    
    
}