//
//  Foo.h
//  Program 19.08
//
//  Created by Michał Listowski on 25.08.2014.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

@property (copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

@end
