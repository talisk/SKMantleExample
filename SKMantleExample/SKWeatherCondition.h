//
//  SKWeatherCondition.h
//  SKMantleExample
//
//  Created by 孙恺 on 15/8/15.
//  Copyright (c) 2015年 Kai Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface SKWeatherCondition : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *errorMessage;
@property (nonatomic, strong) NSNumber *errorNum;
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDate *time;
@property (nonatomic, strong) NSNumber *lowTemperature;
@property (nonatomic, strong) NSNumber *highTemperature;
@property (nonatomic, copy) NSString *condition;
@property (nonatomic, copy) NSString *windDirection;
@property (nonatomic, copy) NSString *windSpeed;

- (void)logWeatherCondition;

@end
