//
//  Fraction+Comparision.h
//  Exercise 15.08
//
//  Created by Michał Listowski on 11.08.2014.
//

#import <Foundation/Foundation.h>
#import "Fraction+NSComparisonMethods.h"

@interface Fraction (Comparision)

-(NSComparisonResult) comparisionFraction: (Fraction *) fract;

@end
