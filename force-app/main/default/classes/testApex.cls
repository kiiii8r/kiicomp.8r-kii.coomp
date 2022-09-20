public class testApex {
    public static void testApex() {
        // Mapを使用したレコード取得
        // Map<Id, Account> sampleMap = new Map<Id, Account>();

        // for ( Account acc : [SELECT Id, Name FROM Account] ) {
        //     sampleMap.put(acc.Id,acc); 
        //     System.debug(acc.Id);
        //     System.debug(acc.Name);
        // }

        // 比較し関連しているものを処理したい
        // List<Contact> conList = [SELECT AccountId FROM Contact];
        // Map<Id, Account> accMap = new Map<Id ,Account>([SELECT Id FROM Account]);

        // for ( Contact con : conList ) {
        //     if ( accMap.get(con.AccountId) != null ) {

        //     }
        // }

        // キーや値でループを回すことも可能
        // Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id FROM Account]);
        // Id key = '0015h000007JrKjAAK';

        // for ( Id accId : accMap.keyset() ) {
        //     System.debug(accId);
        // }

        // for ( Account acc : accMap.values() ) {
        //     System.debug(acc);
                
        // }

        // // 任意の値を含んでいればTrueを返す
        // System.debug(accMap.containsKey(key));

        Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id FROM Account]);

        for ( Id accId : accMap.keyset() ) {
            accMap.get(accId).Industry = 'Agriculture';
        }

        update accMap.values();
    }

}
