global class CL_1107_scheduleBatchClass implements Schedulable{
    
    global void execute(SchedulableContext sc ){
        CL_1107_BatchClass bc = new CL_1107_BatchClass();
        Database.executeBatch(bc, 2);
    }
}