//
//  GreenViewController.m
//  ViewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 ldcc. All rights reserved.
//

#import "GreenViewController.h"
#import "AppDelegate.h"
@interface GreenViewController ()

@end

@implementation GreenViewController
- (IBAction)textChange:(id)sender {
    
    //if ([self.pVC repondsToSelector:])
//    [self.pVC changeText];
    
//    AppDelegate *appDelegate =  [UIApplication sharedApplication].delegate;
//    
//    appDelegate.tmpStr = @"NEW";
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeBackColor" object: self userInfo:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
