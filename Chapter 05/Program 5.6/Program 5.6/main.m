//
//  main.m
//  Program 5.6
//
//  Created by Michał Listowski on 03.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int count = 1;
        
        while (count <= 5) {
            NSLog(@"%i", count);
            ++count;
        }
    }
    return 0;
}

