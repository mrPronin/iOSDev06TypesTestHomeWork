//
//  RITEnumTest.m
//  TypesTestHomework
//
//  Created by Pronin Alexander on 07.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITEnumTest.h"

@implementation RITEnumTest

- (NSString*) NSStringWithRITGender: (RITGender) gender {
    return (gender == RITGenderMale) ? @"Male":@"Female";
}

- (NSString*) NSStringWithRITColor: (RITColor) color {
    
    NSString* result;
    
    if (color == RITColorBlue) {
        result =  @"Blue";
    } else if (color == RITColorGreen) {
        result =  @"Green";
    } else if (color == RITColorRed) {
        result = @"Red";
    };
    
    return result;
}
    
@end
