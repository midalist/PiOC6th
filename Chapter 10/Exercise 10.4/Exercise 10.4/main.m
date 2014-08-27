//
//  main.m
//  Exercise 10.4
//
//  Created by Michał Listowski on 24.06.2014.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        typedef enum {Sunday = 7, Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday } Day;
        
        Day weekend = 3;
        
        if(weekend == Wednesday)
            NSLog(@"Works fine");
    }
    return 0;
}
