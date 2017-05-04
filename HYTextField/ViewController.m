//
//  ViewController.m
//  HYTextField
//
//  Created by 胡杨 on 2017/4/3.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import "ViewController.h"
#import "HYTextField.h"
#import "UIViewController+AssociatedObjects.h"



__weak NSString *string_weak_assign = nil;
__weak NSString *string_weak_retain = nil;
__weak NSString *string_weak_copy   = nil;


// html特殊字符
// =	 &#61;
// .	 &#46;
// (	 &#40;
// )	 &#41;
#define AUTOREALEASE_CASE 3 
__weak NSString *string_weak = nil;

@interface ViewController ()

@end

@implementation ViewController

__weak NSString *string_weak_ = nil;
- (void)viewDidLoad {
    [super viewDidLoad];
    // 我感觉是 iOS9中，[NSString stringWithFormat:@"leichunfeng"];  这样创建出来的对象是指向常量区的，不会销毁。
    // 场景 1
//    NSString *string = [NSString stringWithFormat:@"leichunfeng"];
//    string_weak_ = string;
    // 场景 2
//    @autoreleasepool {
//        NSString *string = [NSString stringWithFormat:@"leichunfeng"];
//        string_weak_ = string;
//    }
    // 场景 3
    NSString *string = nil;
    @autoreleasepool {
        string = @"huyang";
        //[NSString stringWithFormat:@"lei%@", @"chunfeng"];
        //[NSString stringWithFormat:@"leichunfeng"];
        string_weak_ = string;
    }
    NSLog(@"1 string: %@", string_weak_);
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"2 string: %@", string_weak_);
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"3 string: %@", string_weak_);
}

/*
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.associatedObject_assign = [NSString stringWithFormat:@"leichunfeng1"];
    self.associatedObject_retain = [NSString stringWithFormat:@"leichunfeng2"];
    self.associatedObject_copy   = [NSString stringWithFormat:@"leichunfeng3"];
    string_weak_assign = self.associatedObject_assign;
    string_weak_retain = self.associatedObject_retain;
    string_weak_copy   = self.associatedObject_copy;
    
    for (int index = 0; index < 5; index++) {
        CGFloat yy = 20 + index * 60;
        HYTextField *textField = [HYTextField customInputTextFieldWithOriginY:yy];
        if (index == 0) {
            textField.allowedPaste = NO;
        } else if (index == 1) {
            textField.allowedSelect = NO;
        } else if (index == 2) {
            textField.allowedSelectAll = NO;
        } else if (index == 3) {
            textField.allowedCopy = NO;
        } else if (index == 4) {
            textField.allowedCut = NO;
        }
        
        [self.view addSubview:textField];
    }
    
    
    
    
}
 */


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //    NSLog(@"self.associatedObject_assign: %@", self.associatedObject_assign); // Will Crash
    NSLog(@"self.associatedObject_retain: %@", self.associatedObject_retain);
    NSLog(@"self.associatedObject_copy:   %@", self.associatedObject_copy);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
