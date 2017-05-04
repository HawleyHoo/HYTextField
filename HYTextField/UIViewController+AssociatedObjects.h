//
//  UIViewController+AssociatedObjects.h
//  HYTextField
//
//  Created by 胡杨 on 2017/4/16.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AssociatedObjects)

@property (assign, nonatomic) NSString *associatedObject_assign;
@property (strong, nonatomic) NSString *associatedObject_retain;
@property (copy,   nonatomic) NSString *associatedObject_copy;


@end
