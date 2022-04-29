// String waterLevel = 'full' ;

// if(waterLevel == 'empty' || waterLevel == 'half') { 
//     System.debug('Fill the tea kettie');
//     waterLevel = 'full'; 
// } else {
//     System.debug('The tea kettie is full');
// }

String waterLevel = 'empty';

switch on waterLavel {
    when 'empty' { 
        System.debug('Fill the tea kettle');
    }
    when 'full' {
        System.debug('The tea kettle is full');
    }
    when else {
         System.debug('Error!')
    }
}