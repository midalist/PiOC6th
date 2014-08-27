//
//  main.m
//  Program 8.7
//
//  Created by Michał Listowski on 10.06.2014.
//

// Overriding Methods

#import <Foundation/Foundation.h>

// ClassA declaration and definition
@interface ClassA : NSObject{
    int x;  //  Will be inherited by superclass
}

-(void) initVar;
-(void) printVar;

@end
////////////////////////////////////////
@implementation ClassA
-(void) initVar{
    x = 100;
}
-(void)printVar{
    NSLog(@"x = %i", x);
}
@end

//  ClassB declaration and definition
@interface ClassB : ClassA
-(void) initVar;
-(void) printVar;
@end
////////////////////////////////////////
@implementation ClassB

-(void)initVar{ //  Added method
    x = 200;
}
-(void)printVar{
    NSLog(@"x = %i", x);
}

@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        
        [a initVar];    //  Uses ClassA method
        [a printVar];   //  reveal value of x
        [b initVar];    //  Uses overriding method in B
        [b printVar];   //  reveal value of x
    }
    return 0;
}

