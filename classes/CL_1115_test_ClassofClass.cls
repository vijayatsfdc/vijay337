@isTest
public class CL_1115_test_ClassofClass {
    public static testMethod void testClassInsert(){
        Account acc = new Account();
        acc.name = 'Test class';
        insert acc;
    }
}