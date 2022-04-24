public class LeadProcessor implements
    Database.Batchable<sObject>, Database.Stateful {
    public Integer recordsProcessed = 0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id FROM Lead');
    }
    public void execute(Database.BatchableContext bc, List<Lead> scope){
      List<Lead> leads = new List<Lead>();

      for (Lead lead : scope) {
        lead.LeadSource = 'Dreamforce';
      }
      
    }
    public void finish(Database.BatchableContext bc){

    }
}