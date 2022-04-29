

Integer totalGuests = 100;

Integer totalAmountSugar = 159;

Integer totalAmountTea = 35;


// While文の場合

// While(totalGuests > 0) {
//     System.debug(totalGuests + ' Guests Remaining');
//     if(totalAmountSugar == 0 || totalAmountTea == 0) {
//         System.debug('Out of ingredients! Sugar: ' + totalAmountSugar + 'Tea: ' + totalAmountTea);
//         break;
//     }

//     totalAmountSugar--;

//     totalAmountTea--;

//     totalGuests--;
// }


// do while文の場合

do {
    totalAmountSugar--;

    totalAmountTea--;

    totalGuests--;

    System.debug(totalGuests + ' Guests Remaining!');

    if(totalAmountSugar == 0 || totalAmountTea == 0) {
        System.debug('Out of ingredients!');
        break;
    }
} while(totalGuests > 0);

