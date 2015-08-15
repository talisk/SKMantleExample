//
//  SKWeatherCondition.m
//  SKMantleExample
//
//  Created by 孙恺 on 15/8/15.
//  Copyright (c) 2015年 Kai Sun. All rights reserved.
//

#import "SKWeatherCondition.h"

@implementation SKWeatherCondition

- (void)logWeatherCondition {
    NSLog(@"错误代码：%@ 错误信息：%@", self.errorNum, self.errorMessage);
    NSLog(@"城市：%@", self.cityName);
    NSLog(@"发布时间：%@ %@", self.date, self.time);
    NSLog(@"最低气温：%@ 最高气温：%@", self.lowTemperature, self.highTemperature);
    NSLog(@"气象情况：%@", self.condition);
    NSLog(@"风向：%@ 风力：%@", self.windDirection, self.windSpeed);
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"errorMessage" : @"errMsg",
             @"errorNum" : @"errNum",
             @"cityName" : @"retData.city",
             @"date" : @"retData.date",
             @"time" : @"retData.time",
             @"lowTemperature" : @"retData.l_tmp",
             @"highTemperature" : @"retData.h_tmp",
             @"condition" : @"retData.weather",
             @"windDirection" : @"retData.WD",
             @"windSpeed" : @"retData.WS"
             };
}


@end
