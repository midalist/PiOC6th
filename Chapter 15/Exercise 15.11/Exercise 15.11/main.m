//
//  main.m
//  Exercise 15.11
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "AddressBook.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    AddressBook *myBook = [[AddressBook alloc] init];
    AddressCard *myCard = [[AddressCard alloc] init];
    
    [myCard setName:@"Michał Listowski" andEmail:@"midalist@gmail.com" andAddress:@"***********" andCity:@"Koszalin" andCountry:@"Polska" andPhoneNumber:@"+48 *** *** ***"];
    [myBook addCard:myCard];
    NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);
    
    [myCard setName:@"Dawid Listowski"];
    NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);
    //  Now we set myCard name and that don't change card in myBook
    
    [[myBook.book objectAtIndex:0] setName:@"Michał Dawid Listowski"];
    NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);
    //  Now we change name of card inside myBook
    
    
  }
  return 0;
}
