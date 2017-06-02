//
//  ViewController.m
//  CodeForDebug
//
//  Created by sogou-Yan on 17/6/1.
//  Copyright © 2017年 sogou. All rights reserved.
//

#import "ViewController.h"
#import "ANView.h"

@interface ViewController ()

@property(nonatomic, strong) UIButton *buttonBottom;
@property(nonatomic, strong) UIButton *buttonTop;

@end

@implementation ViewController
#define IMAGE_BG_NORMAL             @"dictation_button_bgImage_normal"
#define IMAGE_BG_HILIGHT            @"dictation_button_bgimage_highlight"
#define IMAGE_BG_DISENABLE          @"dictation_button_mark_disenable"
#define IMAGE_BG_SELECTED           @"dictation_button_bgimage_selected"

#define HEIGHT 48
#define DELAY 0.08
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ViewController";
    self.view.backgroundColor = RGBA(255, 255, 255, 0.15)
;
    [self initView];
}
- (void)_buttonTouchUpAction:(UIButton *)sender {
    [UIView animateWithDuration:DELAY animations:^{
        self.buttonTop.alpha = 1;
    }];
}
- (void)_buttonTouchDownAction:(UIButton *)sender {
    [UIView animateWithDuration:DELAY animations:^{
        self.buttonTop.alpha = 0;
    }];
}

- (void)_buttonBottomTouchUpAction:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.buttonTop.enabled = !sender.selected;
}
- (void)initView {
    
    UIButton *buttonBottom = [[UIButton alloc]init];
    [buttonBottom setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:IMAGE_BG_HILIGHT]]];
    self.buttonBottom= buttonBottom;
    [buttonBottom setFrame:CGRectMake(100, [UIScreen mainScreen].bounds.size.height-HEIGHT, 100, HEIGHT)];
    buttonBottom.selected = YES;
    [buttonBottom setBackgroundImage:[UIImage imageNamed:IMAGE_BG_NORMAL] forState:UIControlStateNormal];
    [buttonBottom setBackgroundImage:[UIImage imageNamed:IMAGE_BG_SELECTED] forState:UIControlStateSelected];

    [self.view addSubview:buttonBottom];
    [buttonBottom addTarget:self action:@selector(_buttonBottomTouchUpAction:) forControlEvents:UIControlEventTouchUpInside];

    
    UIButton *buttonTop = [[UIButton alloc]init];
    self.buttonTop= buttonTop;
    buttonTop.enabled = NO;
//    [buttonTop setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:IMAGE_BG_HILIGHT]]];
    [buttonTop setFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height-HEIGHT, 100, HEIGHT)];
    [buttonTop setBackgroundImage:[UIImage imageNamed:IMAGE_BG_NORMAL] forState:UIControlStateNormal];
    [buttonTop setBackgroundImage:[UIImage imageNamed:IMAGE_BG_DISENABLE] forState:UIControlStateDisabled];

    [self.view addSubview:buttonTop];
    [buttonTop addTarget:self action:@selector(_buttonTouchDownAction:) forControlEvents:UIControlEventTouchDown];
    [buttonTop addTarget:self action:@selector(_buttonTouchUpAction:) forControlEvents:UIControlEventTouchUpInside];
}

@end
