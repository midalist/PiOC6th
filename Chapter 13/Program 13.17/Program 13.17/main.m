//
//  main.m
//  Program 13.17
//
//  Created by Michał Listowski on 29.06.2014.
//

//  Function to copy one string to another
//      pointer version 2

#import <Foundation/Foundation.h>

void copyString(char *to, char *from){
    while (*from != '\0')
        *to++ = *from++;
    *to = '\0';
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        void copyString(char *to, char *from);
        char string1[] = "A string to be copied.";
        char string2[50];
        
        copyString(string2, string1);
        NSLog(@"%s", string2);
        
        copyString(string2, "So is this.");
        NSLog(@"%s", string2);
    }
    return 0;
}
