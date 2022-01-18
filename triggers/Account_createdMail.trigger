trigger Account_createdMail on Account (after insert) {
    List<Messaging.singleEmailMessage> mails = new List<Messaging.singleEmailMessage>();
    List<String> sendList = new List<String>();
    sendList.add('vijayatsvu@gmail.com');
    sendList.add('vijayatsvu1@gmail.com');
    sendList.add('vijayatsvu2@gmail.com');
    sendList.add('vijayatsvu3@gmail.com');
    sendList.add('vijayatsvu4@gmail.com');
    for (Account acc: trigger.new){
        Messaging.singleEmailMessage mail = new Messaging.singleEmailMessage();
        mail.setToAddresses(sendList);
        system.debug(sendList);
        mail.setSubject ('New Account has been created');
        mail.setHTMLbody('Account is created with the name'+acc.Name);
        system.debug(mail);
        mails.add(mail);
    }
    
    List<Account> accounts = [SELECT Id, Count_of_mails_sent__c, Mail_Sent_on_Creation__c FROM Account WHERE Id IN :trigger.new];
    
    if (mails !=null && mails.size()>0){
        messaging.sendEmail(mails);
    
        for (Account acc: accounts){
            acc.Mail_Sent_on_Creation__c = true;
            if (acc.Count_of_mails_sent__c == NULL){
                acc.Count_of_mails_sent__c=1;    
            }
            else{
                acc.Count_of_mails_sent__c = acc.Count_of_mails_sent__c +1;
            }    
        }    
        UPDATE accounts;
    }
}