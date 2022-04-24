trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
     List<Task> taskList = new List<Task>();
    
    for ( Opportunity o : Trigger.new ) {
        if ( o.StageName =='Closed Won' ) {
            
            taskList.add(new Task(
                subject = 'Follow Up Test Task',
                whatId = o.id)
                        );  
        }
    }
    if ( taskList.size() > 0 ) {
        insert taskList;
    }
}