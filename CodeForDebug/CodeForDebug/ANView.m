//
//  ANView.m
//  CodeDebug
//
//  Created by sogou-Yan on 17/6/1.
//  Copyright © 2017年 sogou. All rights reserved.
//

#import "ANView.h"

@implementation ANView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initButtonWithFrame:frame];
    }
    return self;
}
- (void)initButtonWithFrame:(CGRect)frame {
    UIButton *button = [[UIButton alloc]init];
    [button setFrame:CGRectMake(0, frame.size.height*0.5, frame.size.width, frame.size.height*0.5)];

    button.backgroundColor = RGB(41, 55, 74);
    [self addSubview:button];
    [button setAdjustsImageWhenHighlighted:YES];
    [button addTarget:self action:@selector(_buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [[UIButton alloc]init];
    [button2 setFrame:CGRectMake(0, 0, frame.size.width, frame.size.height*0.5)];
    [self addSubview:button];
    button2.backgroundColor =  RGB(31, 44, 62);
}

- (void)_buttonAction:(UIButton *)sender {
//    sender.selected = !sender.selected;
    NSLog(@"self:%@",self);
}
@end
