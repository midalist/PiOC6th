//
//  main.m
//  Program 9.3
//
//  Created by Michał Listowski on 14.06.2014.
//

#import "Square.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Square *mySquare = [[Square alloc]init];
        
        //  isMemberOf:
        
        if ([mySquare isMemberOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        
        if ([mySquare isMemberOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a mamber of Rectangle class");
        if ([mySquare isMemberOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is a member of NSObject class");
        
        //  isKindOf:
        
        if ([mySquare isKindOfClass:[Square class]] == YES)
            NSLog(@"mySquare is kind of Square class");
        
        if ([mySquare isKindOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is kind of Rectangle class");
        if ([mySquare isKindOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is kind of NSObject class");
        
        //  respondsTo:
        
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        if ([Square respondsToSelector:@selector(alloc)] == YES)
            NSLog(@"mySquare responds to alloc method");
        
        //  instancesRespondTo:
        
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)])
            NSLog(@"Instances of Rectangle repond to setSide:");
        if ([Square instancesRespondToSelector:@selector(setSide:)])
            NSLog(@"Instances of Square repond to setSide:");
        
        if ([Square isSubclassOfClass:[Rectangle class]] == YES) {
            NSLog(@"Square is subclass of a rectangle");
        }
    }
    return 0;
}

