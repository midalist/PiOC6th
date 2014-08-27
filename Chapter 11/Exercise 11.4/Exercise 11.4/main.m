//
//  main.m
//  Exercise 11.4
//
//  Created by Michał Listowski on 27.06.2014.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        double value1;
        char operator;
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expresion.");
        scanf("%lf %c", &value1, &operator);
        
        [deskCalc setAccumulator: value1];
        
        switch (operator) {
            case 's':
                NSLog(@"Sine from %g = %g", value1, [deskCalc sin]);
                break;
            case 'c':
                NSLog(@"Cosine from %g = %g", value1, [deskCalc cos]);
                break;
            case 't':
                NSLog(@"Tangent from %g = %g", value1, [deskCalc tan]);
                break;
                
            default:
                NSLog(@"Unknown operator.");
                break;
        }
        
    }
    return 0;
}
