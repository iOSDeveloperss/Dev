//
//  LoginSegmentControl.m
//  studyAbroad
//
//  Created by 何新 on 2018/12/11.
//  Copyright © 2018 coreCodeX. All rights reserved.
//

#import "LoginSegmentControl.h"

@interface LoginSegmentControl ()

@end

@implementation LoginSegmentControl

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat viewW = ScreenWidth - IPhoneRatio(38);
        CGFloat viewH = IPhoneRatio(45);

        UIView *phoneView = [[UIView alloc]initWithFrame:CGRectMake(IPhoneRatio(19), 0, viewW, viewH)];
        UIButton *phoneButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, IPhoneRatio(63), viewH)];
        [phoneButton setTitle:@"+8696" forState:UIControlStateNormal];
        [phoneButton setTitle:@"+8696" forState:UIControlStateHighlighted];
        [phoneButton setImage:[UIImage imageNamed:@"Logindown"] forState:UIControlStateNormal];
        [phoneButton setImage:[UIImage imageNamed:@"Logindown"] forState:UIControlStateHighlighted];
        phoneButton.titleEdgeInsets = UIEdgeInsetsMake(0, -phoneButton.imageView.frame.size.width - phoneButton.frame.size.width + phoneButton.titleLabel.frame.size.width, 0, 0);
        phoneButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -phoneButton.titleLabel.frame.size.width - phoneButton.frame.size.width + phoneButton.imageView.frame.size.width);
        phoneButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [phoneView addSubview:phoneButton];
        
        _phoneTextField = [self setTextFieldUIWithFram:CGRectMake(phoneButton.right + 10, 0, phoneView.width - phoneButton.right, viewH) placeholderText:@"请输入手机号"];
        [phoneView addSubview:_phoneTextField];
        UIView *linView = [[UIView alloc]initWithFrame:CGRectMake(0, viewH, viewW, 0.5)];
        linView.backgroundColor = [UIColor whiteColor];
        [phoneView addSubview: linView];
        [self addSubview:phoneView];
        
        UIView *passwordView = [[UIView alloc]initWithFrame:CGRectMake(19, phoneView.bottom + 33, viewW, viewH)];
        _passwordTextField = [self setTextFieldUIWithFram:CGRectMake(0, 0, phoneView.width - 88, viewH) placeholderText:@"请输入验证码"];
        [passwordView addSubview:_passwordTextField];
        UIView *linView2 = [[UIView alloc]initWithFrame:CGRectMake(0, viewH, viewW, 0.5)];
        linView2.backgroundColor = [UIColor whiteColor];
        [passwordView addSubview: linView2];
        [self addSubview:passwordView];
        
        UIButton *confirmButton = [[UIButton alloc]initWithFrame:CGRectMake(19, passwordView.bottom + viewH, viewW, 46)];
        [confirmButton setTitle:@"确定" forState:UIControlStateNormal];
        [confirmButton setTitle:@"确定" forState:UIControlStateHighlighted];
        confirmButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [confirmButton.layer setMasksToBounds:YES];
        [confirmButton.layer setCornerRadius:5.0];
        [confirmButton.layer setBorderWidth:1.0];
        confirmButton.layer.borderColor=[UIColor whiteColor].CGColor;
        [self addSubview:confirmButton];
    }
    
    return self;
}

- (UITextField *)setTextFieldUIWithFram:(CGRect )frame placeholderText:(NSString *)placeholder{
    UITextField *textField = [[UITextField alloc]initWithFrame:frame];
    textField.textColor = [UIColor whiteColor];
    textField.placeholder = placeholder;
    [textField setValue:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.6f] forKeyPath:@"_placeholderLabel.textColor"];
    textField.font = [UIFont systemFontOfSize:15];
    return textField;
}


@end
