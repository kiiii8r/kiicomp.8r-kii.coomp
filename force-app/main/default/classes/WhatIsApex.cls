public class WhatIsApex {
        public static void run() {
        // SQLクエリの検索
        List<Account> lstAcc = [SELECT id, Name, Description FROM Account Where Name LIKE '%test%'];
        // 変数宣言
        List<Account> lstAccountUpdated = new List<Account>();

        // 繰り返し構文による書き換え
        for (Account objAcc: lstAcc){
            objAcc.Description = 'This Account for Testing';
            // 更新
            lstAccountUpdated.add(objAcc);
        }

        if (lstAccountUpdated != null && lstAccountUpdated.size() > 0){
            // DML を実行する
            update lstAccountUpdated;
        }
    }
}