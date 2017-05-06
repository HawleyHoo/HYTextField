//
//  ViewController.m
//  HYTextField
//
//  Created by 胡杨 on 2017/4/3.
//  Copyright © 2017年 Hoo. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Edit.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int index = 0; index < 5; index++) {
        CGFloat yy = 20 + index * 60;
        UITextField *textField = [UITextField customInputTextFieldWithOriginY:yy];
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




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
