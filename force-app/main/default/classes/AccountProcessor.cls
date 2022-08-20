public class AccountProcessor {
    @future
    public static void countContacts(List<id> accIds) {
        
        List<Account> accList = new List<Account>();
        for (AggregateResult ar : [SELECT AccountId a, COUNT(Id) c
                                   FROM Contact
                                   WHERE AccountId in :accIds
                                   GROUP BY AccountId
                                  ]) {
                                      accList.add(
                                          new Account(
                                              Id = (Id) ar.get('a'),
                                              Number_of_Contacts__c = (Decimal) ar.get('c')
                                          ));
                                  }
        update accList;
    }
}