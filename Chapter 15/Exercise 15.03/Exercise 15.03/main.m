//
//  main.m
//  Exercise 15.03
//
//  Created by Michał Listowski on 09.08.2014.
//

#import "AddressBook.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitnes.com";
    NSString *cName = @"Stephen Kochan";
    NSString *cEmail = @"steve@classroomM.com";
    NSString *dName = @"Steve Smith";
    NSString *dEmail = @"steve@hotmail.com";
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    // Set up a new address book
    
    AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Addres Book"];
    
    // Now set up four address cards
    
    [card1 setName:aName andEmail:aEmail];
    [card2 setName:bName andEmail:bEmail];
    [card3 setName:cName andEmail:cEmail];
    [card4 setName:dName andEmail:dEmail];
    
    // Add the cards to the address book
    
    [myBook addCard:card1];
    [myBook addCard:card2];
    [myBook addCard:card3];
    [myBook addCard:card4];
    
    NSArray *my = [NSArray arrayWithArray:[myBook lookup:@"Kochan"]];
    for (int i = 0; i < [my count]; ++i) {
      [my[i] print];
    }
  }
  return 0;
}
