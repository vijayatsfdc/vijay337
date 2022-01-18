global class CL_1113_scheduleTask implements Schedulable{
    
    global void execute(SchedulableContext sc ){
        String userId = UserInfo.getUserId();
        Task tk = new Task();
        tk.Subject = 'Remainder';
        tk.Status = 'open';
        tk.OwnerId = userId;
        insert tk;
    }

}