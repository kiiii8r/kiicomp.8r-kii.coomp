// クラスの作成
public class OlderAccountsUtility {

    // メソッドの作成
    public static void updateOlderAccounts() {
        // 古いアカウントを5つ入手
        Account[] oldAccounts = [SELECT id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
        // ループし説明項目を更新
        for (Account acct : oldAccounts) {
            acct.Description = 'Heritage Account';
        }
        // 取引先レコードを更新
        update oldAccounts;
    }
}
