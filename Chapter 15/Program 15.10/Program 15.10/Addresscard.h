//
//  Addresscard.h
//  Program 15.10
//
//  Created by Michał Listowski on 27.07.2014.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;

-(void) print;

@end
