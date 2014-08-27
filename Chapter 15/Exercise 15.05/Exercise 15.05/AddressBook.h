//
//  AddressBook.h
//  Exercise 15.02
//
//  Created by Michał Listowski on 08.08.2014.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(NSArray *) lookup: (NSString *) theName;
-(void) sort;

@end
