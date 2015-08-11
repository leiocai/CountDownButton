//
//  UIButton+ZDCountDown.h
//  ZDKonw
//
//  Created by Alexcai on 15/8/11.
//  Copyright (c) 2015年 zhidier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZDCountDown)
/**
 *  按钮倒计时方法
 *
 *  @param second 倒计时长(秒)
 */
- (void)beginCountDownWithSecond:(NSInteger)second;
/**
 *  停止倒计时,并清空计时
 */
- (void)stopCountDown;
@end
