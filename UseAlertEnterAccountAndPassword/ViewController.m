//
//  ViewController.m
//  UseAlertEnterAccountAndPassword
//
//  Created by Sj on 16/5/24.
//  Copyright © 2016年 SJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"登录" message:@"输入账号密码" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"登录" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSString *uid = ((UITextField *)[alertController.textFields objectAtIndex:0]).text;
        NSString *pwd = ((UITextField *)[alertController.textFields objectAtIndex:1]).text;
        NSLog(@"账号为%@,密码为%@",uid,pwd);
        }];
        [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField){
            textField.placeholder = @"Login";
        }];
        [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField){
            textField.placeholder = @"password";
            textField.secureTextEntry = YES;
        }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
