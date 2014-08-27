//
//  main.m
//  Exercise 10.3
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Fraction *myFrac = [[Fraction alloc]init];
        
        [myFrac setTo:1 over:2];
        
        [myFrac add:myFrac];
        [myFrac add:myFrac];
        [myFrac add:myFrac];
        [myFrac add:myFrac];
        
        NSLog(@"How much we use add method = %i, ", myFrac.addCounter);
    }
    return 0;
}
