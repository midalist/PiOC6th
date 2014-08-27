//
//  AddressCard.h
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email, *address, *city, *country, *phoneNumber;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andCity: (NSString *) theCity andCountry: (NSString *) theCountry andPhoneNumber: (NSString *) thePhoneNumber;
-(void) print;

@end
