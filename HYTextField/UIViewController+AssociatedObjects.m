//
//  UIViewController+AssociatedObjects.m
//  HYTextField
//
//  Created by 胡杨 on 2017/4/16.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import "UIViewController+AssociatedObjects.h"
#import <objc/runtime.h>


@implementation UIViewController (AssociatedObjects)

- (NSString *)associatedObject_assign {
    return objc_getAssociatedObject(self, _cmd);
}
- (void)setAssociatedObject_assign:(NSString *)associatedObject_assign {
    objc_setAssociatedObject(self, @selector(associatedObject_assign), associatedObject_assign, OBJC_ASSOCIATION_ASSIGN);
}
- (NSString *)associatedObject_retain {
    return objc_getAssociatedObject(self, _cmd);
}
- (void)setAssociatedObject_retain:(NSString *)associatedObject_retain {
    objc_setAssociatedObject(self, @selector(associatedObject_retain), associatedObject_retain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSString *)associatedObject_copy {
    return objc_getAssociatedObject(self, _cmd);
}
- (void)setAssociatedObject_copy:(NSString *)associatedObject_copy {
    objc_setAssociatedObject(self, @selector(associatedObject_copy), associatedObject_copy, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
