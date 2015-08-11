//
//  UIButton+ZDCountDown.m
//  ZDKonw
//
//  Created by Alexcai on 15/8/11.
//  Copyright (c) 2015年 zhidier. All rights reserved.
//

#import "UIButton+ZDCountDown.h"


NSTimer *_countTimer;
static  NSInteger _count;
static  NSString *_title ;
UIButtonType _currentButtonType;
@implementation UIButton (ZDCountDown)

// ****************************************************************
//  开始计时
// ****************************************************************
- (void)beginCountDownWithSecond:(NSInteger)second{
    if (self.buttonType != UIButtonTypeCustom) {
        _currentButtonType = self.buttonType;
        [self setValue:@(UIButtonTypeCustom) forKeyPath:@"buttonType"];
    }
    _title = self.currentTitle;
    _count = second;
    _countTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(changecurrentTitleString) userInfo:nil repeats:YES];
    self.userInteractionEnabled = NO;
    
}
// ****************************************************************
//  更新按钮提示文字
// ****************************************************************
- (void)changecurrentTitleString{
    
    NSString *countString =   [NSString stringWithFormat:@"%@(%li)",_title,(long) _count - 1];
    [self setTitle:countString forState:UIControlStateNormal];
    if (_count-- <= 1.0) {
        [self stopCountDown];
    }
}

// ****************************************************************
//  停止计时并清空定时器
// ****************************************************************
- (void)stopCountDown{
    [_countTimer invalidate];
    _countTimer = nil;
    _count = 60;
    [self setTitle:_title forState:UIControlStateNormal];
    self.userInteractionEnabled = YES;
    [self setValue:@(_currentButtonType) forKeyPath:@"buttonType"];
}
// ****************************************************************
//  同上
// ****************************************************************
-(void)dealloc{
    [self stopCountDown];
}

@end
