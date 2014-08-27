//
//  main.m
//  Exercise 5.1
//
//  Created by Michał Listowski on 04.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        int n;
        NSLog(@" n      n^2");
        NSLog(@"___________");
        for (n = 0; n <= 10; n++) {
            NSLog(@"%2i      %3i", n, n * n);
        }
    }
    return 0;
}

