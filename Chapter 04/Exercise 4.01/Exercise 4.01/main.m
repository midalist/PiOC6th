//
//  main.m
//  Exercise 4.01
//
//  Created by Michał Listowski on 02.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        float a = 123.456;
        int b = 0001;
        int c = 0Xab05;
        double d = 123.5e2;
        float e = 98.6F;
        //int f = 0996; // 9 in octal constant
        unsigned long int g = 1234uL;
        float h = 1.234L;
        int i = 0XABCDEFL;
        //int j = 0x10.5;   // Hexadecimal can't get floating number
        int k = 0xFFFF;
        int l = 0L;
        float m = .0001;
        //float n = 98.7U;  // Float can't be unsigned or signed
        float o = -12E-12;
        //int p = 1.2Fe-7;  // Invalid suffix Fe-7 on floating number
        int r = 197u;
        int s = 0xabcu;
        //int t = 0X0G1;    //Invalid suffix G1
        int u = 123L;
        float v = -597.25;
        int w = +12;
        //int x = 17777s;   // Invalid siffix s on integer
        int y = 07777;
        //int z = 15,000;   // Invalid , in number
        int aa = 100U;
        int ab = +123;
        
    }
    return 0;
}

