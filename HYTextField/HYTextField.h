//
//  HYTextField.h
//  HYTextField
//
//  Created by 胡杨 on 2017/4/3.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface HYTextField : UITextField

@property (nonatomic, assign, getter=isAllowedPaste) BOOL allowedPaste;

@property (nonatomic, assign, getter=isAllowedSelect) BOOL allowedSelect;

@property (nonatomic, assign, getter=isAllowedSelectAll) BOOL allowedSelectAll;

@property (nonatomic, assign, getter=isAllowedCopy) BOOL allowedCopy;

@property (nonatomic, assign, getter=isAllowedCut) BOOL allowedCut;


+ (HYTextField *)customInputTextFieldWithOriginY:(CGFloat)y;


@end
