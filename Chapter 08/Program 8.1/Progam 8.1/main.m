//
//  main.m
//  Progam 8.1
//
//  Created by Michał Listowski on 09.06.2014.
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

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];    // Will use inherited method
        [b printVar];   // Reveal value of x
        
    }
    return 0;
}

