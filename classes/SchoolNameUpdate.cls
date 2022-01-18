public class SchoolNameUpdate{
    public Void sendTask(School__c scl){
        Task tsk = new Task();
        tsk.WhatId = [select Id from School__c where Id =:scl.Id].Id;
        tsk.OwnerId = UserInfo.getUserId();
        tsk.Subject = 'School Name got changed';
        insert tsk;
    }
}