//
//  AddressCard.m
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
  self.name = theName;
  self.email = theEmail;
}
-(void) print{
  NSLog(@"=====================================");
  NSLog(@"|                                   |");
  NSLog(@"|  %-31s  |", [name UTF8String]);
  NSLog(@"|  %-31s  |", [email UTF8String]);
  NSLog(@"|                                   |");
  NSLog(@"|                                   |");
  NSLog(@"|                                   |");
  NSLog(@"|       o                  o        |");
  NSLog(@"=====================================");
}

@end
