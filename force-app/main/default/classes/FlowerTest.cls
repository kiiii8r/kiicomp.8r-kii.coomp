@isTest
public class FlowerTest {
    @isTest
    public static void wiltTest() {

    }

    @isTest
    public static void growTest() {
        String comment = Flower.grow(1,10);
        System.assertEquals('', comment, 'エラー');

        comment = Flower.grow(8,10);
        System.assertEquals(System.debug('Pollinating...'), comment, 'エラー');
    }
}
