//
//  main.m
//  Exercise 18.1
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    AddressBook *myBook = [[AddressBook alloc] initWithName:@"Hello World"];
    AddressBook *myBook1;
    AddressCard *myCard = [[AddressCard alloc] init];
    
    [myCard setName:@"Name" andEmail:@"email" andAddress:@"address" andCity:@"city" andCountry:@"country" andPhoneNumber:@"number"];
    [myBook addCard:myCard];
    
    [myBook list];
    
    myBook1 = [myBook copy];
    //[myBook1 addCard:myCard2];    //  Error
    [myBook1 setBookName:@"Test"];
    [myBook1 list];
  }
  return 0;
}
