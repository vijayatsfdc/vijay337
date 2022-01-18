trigger task_AccountABC on Account (after insert) {
    
    List<Contact> lstcon = new List<Contact>();
    List<Opportunity> lstopp = new List<Opportunity>();
    for (Account acc : trigger.new){
        if (acc.name.contains('abc')){
            Contact con = new Contact();
            Opportunity opp = new Opportunity();
            con.Accountid = acc.id;
            opp.Accountid = acc.id;
            con.lastname= acc.Name;
            opp.Name =acc.Name;
            opp.CloseDate=System.today();
            opp.StageName='Prospecting';
            lstcon.add(con);
            lstopp.add(opp);
        }
    }
    insert lstcon;
    insert lstopp;

}