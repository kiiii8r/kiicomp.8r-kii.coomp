public class SomeClass {
    // future メソッドは引数として標準またはカスタムオブジェクトを取ることができない
    @future
    public static void someFutureMethod(List<Id> recordIds) {
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Id IN :recordIds];
    }
}
