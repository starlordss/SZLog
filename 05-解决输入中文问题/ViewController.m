//
//  ViewController.m
//  05-解决输入中文问题
//
//  Created by Zahi on 2017/6/28.
//  Copyright © 2017年 Zahi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSString *n1 = @"张三";
//    
//    NSString *n2 = @"王五";
//    
//    NSString *n3 = @"李小";
//    
//    
//    NSLog(@"%@ %@ %@",n1, n2, n3);
//    
//    NSMutableArray *arr = [NSMutableArray arrayWithObjects:n1, n2, n3, nil];
//    NSArray *arr = @[n1, n2, n3];
//
//    NSLog(@"%@",arr);
    
    NSDictionary *dic = @{@"name": @"张三", @"addr": @"中国" };
    
    NSLog(@"%@",dic);
}





@end
