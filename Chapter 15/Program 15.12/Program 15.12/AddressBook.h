//
//  AddressBook.h
//  Program 15.12
//
//  Created by Michał Listowski on 29.07.2014.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;

@end
