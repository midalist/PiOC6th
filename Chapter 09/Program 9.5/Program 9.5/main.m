//
//  main.m
//  Program 9.5
//
//  Created by Michał Listowski on 16.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSArray *myArray = [NSArray array];
        
        @try{
            [myArray objectAtIndex:2];
        }
        @catch (NSException *exception){
            NSLog(@"Caught %@%@", exception.name, exception.reason);
        }
        
        NSLog(@"Execution continues");
    }
    return 0;
}

