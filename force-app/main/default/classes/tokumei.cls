List <Contact> conList = [SELECT Email, Name From Contact];

Map<String, Contact> conMap = new Map<String, Contact>(); 

for(Account con : conList){
    conMap.put(con, con.Name);
}

system.debug(conMap);