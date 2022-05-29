@isTest
public class Covid19Test {

    @isTest
    public static void treatPatientTest() {
        Covid19 jaipur = new Covid19(10);

        Integer treated = jaipur.getTreated();

        // Check if the count is 10 or not.
        System.assertEquals(10,treated,'エラーです');

        // Create the instance of the class.
        covid19 hyd = new Covid19(112);

        treated = hyd.getTreated();

        // Check if the count is 112 not.
        System.assertEquals(112, treated, 'エラーです');

        // Check the count of recoverdInCountry, it should be 122
        System.assertEquals(122,Covid19.recoveredInCountry, 'エラーです');

        jaipur.treatPatient();
        treated = jaipur.getTreated();
        System.assert(treated == 11, 'エラーです');
        System.assert(Covid19.recoveredInCountry == 123, 'エラーです');
    }
}