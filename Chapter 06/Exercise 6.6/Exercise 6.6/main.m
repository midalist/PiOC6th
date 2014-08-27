//
//  main.m
//  Exercise 6.6
//
//  Created by Michał Listowski on 06.06.2014.
//

#import <Foundation/Foundation.h>

//---- Program Section ----

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        signed number, tempNumber, right_digit, howDepthIsNumber = 0;
        BOOL isNegative = NO;
        
        NSLog(@"Enter your number.");
        
        scanf("%i", &number);
        if ( number < 0) {
            number = -number;
            isNegative = YES;
            NSLog(@"minus");
        }
        tempNumber = number;
        do{
            right_digit = tempNumber % 10;
            tempNumber /= 10;
            howDepthIsNumber++;
        } while (tempNumber != 0);
        do {
            tempNumber = number;
            number %= (int)pow(10, howDepthIsNumber - 1);
            tempNumber -= number;
            tempNumber /= (int)pow(10, howDepthIsNumber - 1);
            
            switch (tempNumber) {
                case 1:
                    NSLog(@"One");
                    break;
                case 2:
                    NSLog(@"Two");
                    break;
                case 3:
                    NSLog(@"Three");
                    break;
                case 4:
                    NSLog(@"Four");
                    break;
                case 5:
                    NSLog(@"Five");
                    break;
                case 6:
                    NSLog(@"Six");
                    break;
                case 7:
                    NSLog(@"Seven");
                    break;
                case 8:
                    NSLog(@"Eight");
                    break;
                case 9:
                    NSLog(@"Nine");
                    break;
                case 0:
                    NSLog(@"Zero");
                    break;
                    
                default:
                    break;
            }
            
            howDepthIsNumber--;
        } while (number);
    }
    return 0;
}

