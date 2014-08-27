//
//  main.m
//  Program 13.14
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

void exchange(int *pint1, int *pint2){
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        void exchange(int *pint1, int *pint2);
        
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        exchange(p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(&i1, &i2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
    }
    return 0;
}
