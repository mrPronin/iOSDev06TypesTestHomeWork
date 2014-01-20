//
//  RITEnumTest.h
//  TypesTestHomework
//
//  Created by Pronin Alexander on 07.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    RITGenderMale,
    RITGenderFemale
} RITGender;

typedef enum {
    RITColorRed,
    RITColorGreen,
    RITColorBlue
} RITColor;

typedef enum {
    RITHairColorLight = 4,
    RITHairColorBrown,
    RITHairColorRed
} RITHairColor;

@interface RITEnumTest : NSObject

@property (assign, nonatomic) RITGender gender;
@property (assign, nonatomic) RITColor color;
@property (assign, nonatomic) RITHairColor hairColor;

@end
