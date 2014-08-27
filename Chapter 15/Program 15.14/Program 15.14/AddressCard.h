//
//  AddressCard.h
//  Program 15.11
//
//  Created by Michał Listowski on 28.07.2014.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) print;

@end
