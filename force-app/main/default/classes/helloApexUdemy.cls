public class helloApexUdemy {
    public static void helloApexUdemy() {
        String greeting = 'Hello World';
        System.debug(greeting);

        Boolean amIAwake = true;
        System.debug(amIAwake);

        // 整数+-20億まで(32ビット)
        Integer rollNumber = 11008890;
        System.debug(rollNumber);


        // Longは最後にLが必要、整数と見分ける目的（64ビット）
        Long worldPopuation = 7000000000L;
        System.debug(worldPopuation);

        Decimal myCgpa = 8.5;
        System.debug(myCgpa);
1
        Date tDay = Date.newInstance(2020,5,18);
        System.debug(tDay);

        Time currentTime = Time.newInstance(3,25,0,0);
        System.debug(currentTime);

        DateTime currentDateTime = DateTime.newInstance(2020,5,18,3,25,0);
        System.debug(currentDateTime);
    }
}
