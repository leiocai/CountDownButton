//
//  ViewController.m
//  ButtonCountDown
//
//  Created by Alexcai on 15/8/11.
//  Copyright (c) 2015年 zhidier. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ZDCountDown.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Demo:(UIButton *)sender {
    [sender beginCountDownWithSecond:20];
}

@end
