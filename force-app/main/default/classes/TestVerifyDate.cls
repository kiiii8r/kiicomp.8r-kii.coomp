@isTest
private class TestVerifyDate {
    @isTest static void CheckDatesDate2() {
        Date date1 = Date.newInstance(1998, 10, 21);
        Date date2 = Date.newInstance(1998, 11, 21);
        Date dat = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, dat);
    }
    
     @isTest static void CheckDatesDate1() {
        Date date1 = Date.newInstance(1998, 10, 21);
        Date date2 = Date.newInstance(1998, 11, 11);
        Date dat = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date1, dat);
    }
    
 
}