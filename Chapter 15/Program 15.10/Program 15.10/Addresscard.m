//
//  Addresscard.m
//  Program 15.10
//
//  Created by Michał Listowski on 27.07.2014.
//

#import "AddressCard.h"

@implementation AddressCard {
  NSString *name;
  NSString *email;
}

-(void) setName: (NSString *) theName{
  name = [NSString stringWithString:theName];
}
-(void) setEmail: (NSString *) theEmail{
  email = [NSString stringWithString:theEmail];
}
-(NSString *) name{
  return name;
}
-(NSString *) email{
  return email;
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
