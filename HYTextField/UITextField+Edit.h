//
//  UITextField+Edit.h
//  HYTextField
//
//  Created by 胡杨 on 2017/4/4.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Edit)

@property (nonatomic, assign, getter=isAllowedPaste) BOOL allowedPaste;

@property (nonatomic, assign, getter=isAllowedSelect) BOOL allowedSelect;

@property (nonatomic, assign, getter=isAllowedSelectAll) BOOL allowedSelectAll;

@property (nonatomic, assign, getter=isAllowedCopy) BOOL allowedCopy;

@property (nonatomic, assign, getter=isAllowedCut) BOOL allowedCut;


+ (UITextField *)customInputTextFieldWithOriginY:(CGFloat)y;


@end
