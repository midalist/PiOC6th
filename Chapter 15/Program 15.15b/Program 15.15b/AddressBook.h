//
//  AddressBook.h
//  Program 15.14
//
//  Created by Michał Listowski on 31.07.2014.
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
-(AddressCard *) lookup: (NSString *) theName;
-(void) sort;

@end
