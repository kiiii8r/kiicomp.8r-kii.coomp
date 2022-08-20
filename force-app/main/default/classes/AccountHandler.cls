public class AccountHandler {
    public static void insertAccount(Integer value) {
        Integer counter = 1;
        List<Account> addAccounts = new List<Account>();
        while(counter <= value) {
            System.debug('while動作回数: ' + counter);

            // Accountデータ作成
            Account store = new Account();
            store.Name = 'Acme Inc ' + counter;
            store.AccountNumber = 'A000' + counter;

            addAccounts.add(store);

            counter++;
        }
        // Accountにデータを追加
        insert addAccounts;
    }
}