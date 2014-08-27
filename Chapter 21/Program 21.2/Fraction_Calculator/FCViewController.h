//
//  FCViewController.h
//  Fraction_Calculator
//
//  Created by Michał Listowski on 28.05.2014.
//

#import <UIKit/UIKit.h>

@interface FCViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit: (int)digit;
-(void) processOp: (char)theOp;
-(void) storeFracPart;

//  Numeric keys

-(IBAction)clickDigit:(UIButton *)sender;

//  Arithmentic operation keys

-(IBAction)clickPlus;
-(IBAction)clickMinus;
-(IBAction)clickMultiply;
-(IBAction)clickDivide;

//  Misc. keys

-(IBAction)clickOver;
-(IBAction)clickEqual;
-(IBAction)clickClear;



@end
