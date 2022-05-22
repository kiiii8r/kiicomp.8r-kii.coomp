public class webinerTest {
    public static void run() {
        integer i = 0;
        while ( i == 1 && i == 99 ) {
            i++;
        }
        integer j = 0;
        boolean b;
        if(b==false) { 
            j++;
        }
        System.debug( 'i=' + i + ' / j=' +j);
    }

    public static void run2() {
        integer i = 0;
        do {
            i++;
        } while (i == 1 && i == 99);
        System.debug(i);
    }
}