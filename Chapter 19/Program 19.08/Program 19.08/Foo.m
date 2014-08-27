//
//  Foo.m
//  Program 19.08
//
//  Created by Michał Listowski on 25.08.2014.
//

#import "Foo.h"

@implementation Foo

@synthesize strVal, intVal, floatVal;

-(void)encodeWithCoder:(NSCoder *)encoder {
  [encoder encodeObject:strVal forKey:@"FooStrVal"];
  [encoder encodeInt:intVal forKey:@"FooIntVal"];
  [encoder encodeFloat:floatVal forKey:@"FooFloatVal"];
}
-(id)initWithCoder:(NSCoder *)decoder {
  strVal = [decoder decodeObjectForKey:@"FooStrVal"];
  intVal = [decoder decodeIntForKey:@"FooIntVal"];
  floatVal = [decoder decodeFloatForKey:@"FooFloatVal"];
  
  return self;
}

@end
