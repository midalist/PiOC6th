//
//  main.m
//  Exercise 9.5
//
//  Created by Michał Listowski on 20.06.2014.
//

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc]init];
        Complex *complex = [[Complex alloc]init];
        id number = [[Complex alloc]init];
        
        
        //  isMemberOf:
        
        if ([fraction isMemberOfClass:[Complex class]] == YES)
            NSLog(@"fraction is a member of Fraction class");
        
        if ([complex isMemberOfClass:[NSObject class]] == YES)
            NSLog(@"complex is a mamber of Complex class");
        
        
        //  isKindOf:
        
        if ([complex isKindOfClass:[NSObject class]] == YES)
            NSLog(@"complex is kind of NSObject class");
        
        if ([fraction isKindOfClass:[Fraction class]] == YES)
            NSLog(@"fraction is kind of Fraction class");
        
        //  respondsTo:
        
        if ([fraction respondsToSelector:@selector(print)] == YES)
            NSLog(@"fraction responds to print method");
        if ([complex respondsToSelector:@selector(print)] == YES)
            NSLog(@"complex responds to print method");
        
        //  instancesRespondTo:
        
        if ([Fraction instancesRespondToSelector:@selector(print)])
            NSLog(@"Instances of Rectangle repond to setSide:");
        if ([number isKindOfClass:[Complex class]])
            NSLog(@"number is a member of Complex class");
        if ([[number class] respondsToSelector:@selector(alloc)])
            NSLog(@"Class number repond to alloc");
    }
    return 0;
}
