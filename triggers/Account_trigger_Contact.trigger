trigger Account_trigger_Contact on Account (after insert) {

List<Contact> lstContact = new List<Contact>();

    for(Account acc: trigger.new){
        Contact con = new Contact();
        con.lastname = acc.Name;
        con.MobilePhone = '999999';
        con.AccountId = acc.id;
        lstContact.add(con);
    }
    if(lstContact!=null && lstContact.size()>0){
        insert lstContact;
    }


}