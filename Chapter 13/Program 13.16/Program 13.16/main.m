//
//  main.m
//  Program 13.16
//
//  Created by Michał Listowski on 29.06.2014.
//

#import <Foundation/Foundation.h>

void copyString(char *to, char *from){
    for (; *from != '\0'; ++from, ++to)
        *to = *from;
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
