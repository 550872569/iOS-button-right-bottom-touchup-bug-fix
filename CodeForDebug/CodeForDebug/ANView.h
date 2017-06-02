//
//  ANView.h
//  CodeDebug
//
//  Created by sogou-Yan on 17/6/1.
//  Copyright © 2017年 sogou. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define COLOR_SYSTEM_VIEW_BACKGROUND RGB(37, 52, 73)
#define COLOR_VIEW_MARKRECORDSAVE_BG                     RGBA(255, 255, 255, 0.15)
#define COLOR_VIEW_MARKRECORDSAVE_TEXT_NORMAL            RGB(209, 221, 237)
#define COLOR_VIEW_MARKRECORDSAVE_LINE                   RGB(37, 52, 73)
#define COLOR_VIEW_MARKRECORDSAVE_TEXT_HILIGHT           RGB(0, 0, 0)

#define IMAGE_BUTTON_MARK_NORMAL                        @"buttonImageNormal_1"
#define IMAGE_BUTTON_MARK_SELECTED                      @"buttonImageNormal_2"
#define IMAGE_BUTTON_MARK_H                             @"buttonLoginImage_bg_selected"


@interface ANView : UIView

@end
