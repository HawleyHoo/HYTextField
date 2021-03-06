//
//  UITextField+Edit.m
//  HYTextField
//
//  Created by 胡杨 on 2017/4/4.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import "UITextField+Edit.h"
#import <objc/runtime.h>
static inline CGRect SCREENBOUNDS() {
    return [UIScreen mainScreen].bounds;
}

static inline CGSize SCREENSIZE() {
    return SCREENBOUNDS().size;
}

static inline CGFloat SCREENWIDTH() {
    return SCREENSIZE().width;
}

static inline CGFloat SCREENHEIGHT() {
    return SCREENSIZE().height;
}

@implementation UITextField (Edit)

- (instancetype)init {
    if (self = [super init]) {
        self.allowedPaste = YES;
        self.allowedSelect = YES;
        self.allowedSelectAll = YES;
        self.allowedCopy = YES;
        self.allowedCut = YES;
    }
    return self;
}
static const char HYAllowedPasteKey = '\0';
- (void)setAllowedPaste:(BOOL)allowedPaste {
    objc_setAssociatedObject(self, &HYAllowedPasteKey, [NSNumber numberWithBool:allowedPaste], OBJC_ASSOCIATION_ASSIGN);
}
- (BOOL)isAllowedPaste {
    return [(NSNumber *)objc_getAssociatedObject(self, &HYAllowedPasteKey) boolValue];
}

static const char HYAllowedSelectKey = '\0';
- (void)setAllowedSelect:(BOOL)allowedSelect {
    objc_setAssociatedObject(self, &HYAllowedSelectKey, [NSNumber numberWithBool:allowedSelect], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isAllowedSelect {
    return [(NSNumber *)objc_getAssociatedObject(self, &HYAllowedSelectKey) boolValue];
}

static const char HYAllowedSelectAllKey = '\0';
- (void)setAllowedSelectAll:(BOOL)allowedSelectAll {
    objc_setAssociatedObject(self, &HYAllowedSelectAllKey, [NSNumber numberWithBool:allowedSelectAll], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isAllowedSelectAll {
    return [(NSNumber *)objc_getAssociatedObject(self, &HYAllowedSelectAllKey) boolValue];
}

static const char HYAllowedCopyKey = '\0';
- (void)setAllowedCopy:(BOOL)allowedCopy {
    objc_setAssociatedObject(self, &HYAllowedCopyKey, [NSNumber numberWithBool:allowedCopy], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isAllowedCopy {
    return [(NSNumber *)objc_getAssociatedObject(self, &HYAllowedCopyKey) boolValue];
}

static const char HYAllowedCutKey = '\0';
- (void)setAllowedCut:(BOOL)allowedCut {
    objc_setAssociatedObject(self, &HYAllowedCutKey, [NSNumber numberWithBool:allowedCut], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isAllowedCut {
    return [(NSNumber *)objc_getAssociatedObject(self, &HYAllowedCutKey) boolValue];
}




CGSize CGSizeMakeForCustomInputTextField() {
    CGFloat ww = SCREENWIDTH() * 0.77;
    CGFloat hh = ww / 6.0;
    return CGSizeMake(ww, hh);
}


CGRect CGRectMakeForCustomInputTextFieldWithOriginY(CGFloat y) {
    CGRect rect = CGRectZero;
    rect.size = CGSizeMakeForCustomInputTextField();
    rect.origin = CGPointMake((SCREENWIDTH() - rect.size.width) * 0.5, y);
    return rect;
}

+ (UITextField *)customInputTextFieldWithOriginY:(CGFloat)y {
    CGRect rect = CGRectMakeForCustomInputTextFieldWithOriginY(y);
    UITextField *textField = [[UITextField alloc] init];
    textField.frame = rect;
    rect = CGRectMake(0, 0, 10, rect.size.height);
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.leftView = [[UIView alloc] initWithFrame:rect];
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    return textField;
}




- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //    [UIMenuController sharedMenuController].menuVisible = NO;
    if (action == @selector(paste:)) {//是否禁止粘贴
        return self.isAllowedPaste;
    }
    if (action == @selector(select:)) {// 是否禁止选择
        return self.isAllowedSelect;
    }
    if (action == @selector(selectAll:)) {// 是否禁止全择
        return self.isAllowedSelectAll;
    }
    if (action == @selector(copy:)) {// 是否禁止拷贝
        return self.isAllowedCopy;
    }
    if (action == @selector(cut:)) {// 是否禁止剪切
        return self.isAllowedCut;
    }
    return [super canPerformAction:action withSender:sender];
}


@end
