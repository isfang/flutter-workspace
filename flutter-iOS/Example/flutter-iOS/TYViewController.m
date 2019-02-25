//
//  TYViewController.m
//  flutter-iOS
//
//  Created by isfang on 02/21/2019.
//  Copyright (c) 2019 isfang. All rights reserved.
//

#import "TYViewController.h"
#import "TYFlutterViewController.h"

#import <Flutter/Flutter.h>

#import "TYFlutterInstance.h"

@interface TYViewController ()

@end

@implementation TYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *normalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    normalButton.frame = CGRectMake(100, 280, 198, 45);
    normalButton.layer.borderWidth = 1.0f;
    normalButton.layer.borderColor = UIColor.grayColor.CGColor;
    normalButton.layer.cornerRadius = 10;
    [normalButton setTitle:@"Normal" forState:UIControlStateNormal];
    [normalButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    // 设置按钮点击事件为jump
    [normalButton addTarget:self action:@selector(jumpNormal) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:normalButton];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 198, 45);
    btn.layer.borderWidth = 1.0f;
    btn.layer.borderColor = UIColor.grayColor.CGColor;
    btn.layer.cornerRadius = 10;
    [btn setTitle:@"Flutter" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    // 设置按钮点击事件为jump
    [btn addTarget:self action:@selector(jumpFlutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)jumpNormal {
    [self.navigationController pushViewController:[TYViewController new] animated:NO];
    
//    [self presentViewController:[TYViewController new] animated:NO completion:nil];
}
    
- (void)jumpFlutter {
    NSLog(@"Just jump to flutter");
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] init];
    [flutterViewController setInitialRoute:@"Page"];
    [self.navigationController pushViewController:flutterViewController animated:YES];
    
//    [self presentViewController:TYFlutterInstance.oneInstance.flutterViewController animated:NO completion:nil];
    
//    [self.navigationController pushViewController:TYFlutterInstance.oneInstance.flutterViewController animated:YES];

    
//    [self presentViewController:TYFlutterInstance.oneInstance.flutterViewController animated:NO completion:nil];
}
@end
