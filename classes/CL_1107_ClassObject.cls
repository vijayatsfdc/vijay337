global class CL_1107_ClassObject{
    
    public void CreateClasses(){
        List<class__c> cls = new List<class__c>();
        for (integer i=1;i<=10;i++){
            class__c cl = new class__c();
            cl.Name = 'class '+i;
            cls.add(cl);
        }
        if(cls!=NULL && cls.size()>0){
            insert cls;
        }
        
    }
    
    
    public void CreateTestClasses(){
    List<class__c> cls = new List<class__c>();
    for (integer i=1;i<=10;i++){
        class__c cl = new class__c();
        cl.Name = 'class Test '+i;
        cls.add(cl);
    }
    if(cls!=NULL && cls.size()>0){
        insert cls;
    }
        
    }
    
    

}