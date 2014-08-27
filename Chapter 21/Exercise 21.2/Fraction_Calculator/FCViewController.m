//
//  FCViewController.m
//  Fraction_Calculator
//
//  Created by Michał Listowski on 28.05.2014.
//

#import "FCViewController.h"
#import "Calculator.h"

@interface FCViewController ()

@end

@implementation FCViewController{
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator, isDigit, isNegative;
    Calculator *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;

- (void)viewDidLoad
{
    //  Override point for customization after application launch
    firstOperand = YES;
    isNumerator = YES;
    isNegative = NO;
    isDigit = NO;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
}
-(void) processDigit: (int)digit{
    currentNumber = currentNumber * 10 + digit;
    [displayString appendString:[NSString stringWithFormat:@"%i", digit]];
    display.text = displayString;
}
-(IBAction)clickDigit:(UIButton *)sender{
    isDigit = YES;
    int digit = [[sender currentTitle] intValue];
    
    [self processDigit:digit];
}
-(void) processOp: (char)theOp{
    NSString *opStr;
    
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" * ";
            break;
        case '/':
            opStr = @" / ";
            break;
    }
    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;
    
    [displayString appendString:opStr];
    display.text = displayString;
}
-(void) storeFracPart{
    if (firstOperand) {
        if (isNumerator) {
            if (isNegative)
                myCalculator.operand1.numerator = currentNumber * -1;
            else
                myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;  // e.g. 3 * 4/5 =
        }
        else
            myCalculator.operand1.denominator = currentNumber;
    }
    else if(isNumerator){
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1;  // e.g. 3/2 * 4 =
    }
    else{
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    currentNumber = 0;
}
-(IBAction)clickOver{
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString:@"/"];
    display.text = displayString;
}

//  Arithmetic Operation keys

-(IBAction)clickPlus{
    [self processOp:'+'];
}
-(IBAction)clickMinus{
    if(isDigit)
        [self processOp:'-'];
    else{
        isNegative = YES;
        [displayString appendString:@"-"];
        display.text = displayString;
    }
}
-(IBAction)clickMultiply{
    [self processOp:'*'];
}
-(IBAction)clickDivide{
    [self processOp:'/'];
}

//  Misc. Keys

-(IBAction)clickEqual{
    if (firstOperand == NO) {
        [self storeFracPart];
        [myCalculator performOperation:op];
        
        [displayString appendString:@" = "];
        [displayString appendString:[myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES;
        isNegative = NO;
        isDigit = NO;
        [displayString setString:@""];
    }
}
-(IBAction)clickClear{
    isNumerator = YES;
    firstOperand = YES;
    isNegative = NO;
    isDigit = NO;
    currentNumber = 0;
    [myCalculator clear];
    [displayString setString:@""];
    display.text = displayString;
}
-(IBAction)clickConvert{
    display.text = [NSString stringWithFormat:@"%g", (double) myCalculator.accumulator.numerator / myCalculator.accumulator.denominator];
    
}

@end
