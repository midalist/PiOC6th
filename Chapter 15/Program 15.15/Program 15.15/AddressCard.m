//
//  AddressCard.m
//  Program 15.11
//
//  Created by Michał Listowski on 28.07.2014.
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

//  Compare the two names from the specified address cards

-(NSComparisonResult) compareNames: (id) element{
  return [name compare:[element name]];
}

@end
