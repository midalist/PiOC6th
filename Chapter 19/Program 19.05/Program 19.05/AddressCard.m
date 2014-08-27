//
//  AddressCard.m
//  Learn_PiOc6
//
//  Created by Michał Listowski on 27.04.2014.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email, address, city, country, phoneNumber;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail{
    self.name = theName;
    self.email = theEmail;
}
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andCity: (NSString *) theCity andCountry: (NSString *) theCountry andPhoneNumber: (NSString *) thePhoneNumber{
    if(self){
        self.name = theName;
        self.email = theEmail;
        self.address = theAddress;
        self.city = theCity;
        self.country = theCountry;
        self.phoneNumber = thePhoneNumber;
    }
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

-(void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:name forKey:@"AdressCardName"];
    [encoder encodeObject:email forKey:@"AdressCardEmail"];
}
-(id)initWithCoder:(NSCoder *)decoder {
    name = [decoder decodeObjectForKey:@"AdressCardName"];
    email = [decoder decodeObjectForKey:@"AdressCardEmail"];
    return self;
}
-(void)assignName: (NSString *) theName andEmail: (NSString *) theEmail{
  name = theName;
  email = theEmail;
}
-(AddressCard *)copyWithZone:(NSZone *)zone{
  AddressCard *newCard = [[AddressCard allocWithZone:zone] init];
  [newCard assignName:name andEmail:email];
  return newCard;
}


@end
