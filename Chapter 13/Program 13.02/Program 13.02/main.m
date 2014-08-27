//
//  main.m
//  Program 13.02
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        char word[] = {'H', 'e', 'l', 'l', 'o', '!'};
        int i;
        
        for (i = 0; i < 6; ++i)
            NSLog(@"%c", word[i]);
    }
    return 0;
}
