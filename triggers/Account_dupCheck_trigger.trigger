trigger Account_dupCheck_trigger on Account (before insert) {

List<Account> lstacc = new List<Account>();
List<String> setacc = new List<String>();
List<String> setAccName = new List<String>();

    for (Account acc: trigger.new){
        setacc.add(acc.Name);
    }    
    lstacc = [select id,name from Account where name in: setacc];
        
    for(Account acc: lstacc){
        setAccName.add(acc.name);
    }
    
        
    if (lstacc!=null && lstacc.size()>0){
        for (Account acc: trigger.new){
            if (setAccName.contains(acc.name)){
                acc.adderror('Account Name should be Unique');
            }
        }      
        
    }
    
}