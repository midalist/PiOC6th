//
//  AddressCard.h
//  Learn_PiOc6
//
//  Created by Michał Listowski on 27.04.2014.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject <NSCoding, NSCopying>

@property (copy, nonatomic) NSString *name, *email, *address, *city, *country, *phoneNumber;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andCity: (NSString *) theCity andCountry: (NSString *) theCountry andPhoneNumber: (NSString *) thePhoneNumber;
-(void) print;

//  Additional method for NSCopying protocol

-(void)assignName: (NSString *) theName andEmail: (NSString *) theEmail;

@end
