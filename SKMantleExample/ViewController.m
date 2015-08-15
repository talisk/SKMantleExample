//
//  ViewController.m
//  SKMantleExample
//
//  Created by 孙恺 on 15/8/15.
//  Copyright (c) 2015年 Kai Sun. All rights reserved.
//

#import "ViewController.h"
#import "SKWeatherCondition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *jsonString = @"{\"errNum\": 0,\"errMsg\": \"success\",\"retData\": {\"city\": \"北京\",\"pinyin\": \"beijing\",\"citycode\": \"101010100\",\"date\": \"15-08-15\",\"time\": \"11:00\",\"postCode\": \"100000\",\"longitude\": 116.391,\"latitude\": 39.904,\"altitude\": \"33\",\"weather\": \"晴\",\"temp\": \"35\",\"l_tmp\": \"22\",\"h_tmp\": \"35\",\"WD\": \"无持续风向\",\"WS\": \"微风(<10m/h)\",\"sunrise\": \"05:25\",\"sunset\": \"19:12\"}}";
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
    
    SKWeatherCondition *weather = [MTLJSONAdapter modelOfClass:SKWeatherCondition.class fromJSONDictionary:dictionary error:nil];
    
    [weather logWeatherCondition];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
