//
//  main.m
//  Exercise 8.1
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

//  ClassC declaration and definition

@interface ClassC : ClassB

-(void)initVar;

@end

@implementation ClassC

-(void)initVar{
    x = 300;
}

@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
        
    }
    return 0;
}

