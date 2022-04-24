@isTest
private class TestRestrictContactByName {
    @isTest static void TestContactCheck() {
        Contact con = new Contact(LastName='INVALIDNAME');
        insert con;
      
        Test.startTest();
        Database.DeleteResult result = Database.delete(con, false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "' +'INVALIDNAME'+  '" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
    
}