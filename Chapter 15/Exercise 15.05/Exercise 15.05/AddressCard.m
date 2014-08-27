//
//  AddressCard.m
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email, address, city, country, phoneNumber;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
  self.name = theName;
  self.email = theEmail;
}
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andCity: (NSString *) theCity andCountry: (NSString *) theCountry andPhoneNumber: (NSString *) thePhoneNumber{
  self.name = theName;
  self.email = theEmail;
  self.address = theAddress;
  self.city = theCity;
  self.country = theCountry;
  self.phoneNumber = thePhoneNumber;
}
-(void) print{
  NSLog(@"=====================================");
  NSLog(@"|                                   |");
  NSLog(@"|  %-31s  |", [name UTF8String]);
  NSLog(@"|  %-31s  |", [email UTF8String]);
  NSLog(@"|  %-31s  |", [address UTF8String]);
  NSLog(@"|  %-31s  |", [city UTF8String]);
  NSLog(@"|  %-31s  |", [country UTF8String]);
  NSLog(@"|  %-31s  |", [phoneNumber UTF8String]);
  NSLog(@"|       o                  o        |");
  NSLog(@"=====================================");
}

@end
