public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numConts, String strB){
        List<Contact> conts = new List<Contact>();
        
        for(Integer i=0;i<numConts;i++) {
            Contact a = new Contact(
                FirstName='Test' + i,
                LastName=strB
                );
            conts.add(a);
        }

        return conts;
    }
}