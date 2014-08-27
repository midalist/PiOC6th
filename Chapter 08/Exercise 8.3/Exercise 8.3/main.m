//
//  main.m
//  Exercise 8.3
//
//  Created by Michał Listowski on 11.06.2014.
//

#import <Foundation/Foundation.h>

// ClassA declaration and definition

@interface ClassA : NSObject{
    int x;
}

-(void)initVar;

@end

@implementation ClassA

-(void)initVar{
    x = 100;
}

@end

// ClassB declaration and definition

@interface ClassB : ClassA

-(void) printVar;

@end

@implementation ClassB

-(void) printVar{
    NSLog(@"x = %i", x);
}

@end

// ClassB2 declaration and definition

@interface ClassB2 : ClassA

-(void) printVar;

@end

@implementation ClassB2

-(void) printVar{
    NSLog(@"x = %i", x);
}

@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        ClassB2 *b2 = [[ClassB2 alloc] init];
        
        [b initVar];    // Will use inherited method
        [b printVar];   // Reveal value of x
        [b2 initVar];
        [b2 printVar];
        
    }
    return 0;
}

