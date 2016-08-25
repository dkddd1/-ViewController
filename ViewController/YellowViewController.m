//
//  YellowViewController.m
//  ViewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 ldcc. All rights reserved.
//

#import "YellowViewController.h"
#import "GreyViewController.h"
#import "GreenViewController.h"
#import "AppDelegate.h"

@interface YellowViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation YellowViewController
- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"greenway" sender:nil];
    
}
- (IBAction)greyButtonClicked:(id)sender {
    GreyViewController *gVC = [self.storyboard instantiateViewControllerWithIdentifier:@"greyview"];
    
    [self.navigationController pushViewController:gVC animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.myLabel.text = self.userStr;
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
//    self.myLabel.text = self.userStr;
    AppDelegate *appDelegate =  [UIApplication sharedApplication].delegate;
    
    NSString *str = appDelegate.tmpStr;
    
    self.myLabel.text = str;
    
}

- (void)changeText
{
  // self.myLabel.text = @"TEST";
    self.userStr = @"TEST";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    GreenViewController *gVC = (GreenViewController*)segue.destinationViewController;
    gVC.pVC = self;

}


@end
