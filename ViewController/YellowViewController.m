//
//  YellowViewController.m
//  ViewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 ldcc. All rights reserved.
//

#import "YellowViewController.h"
#import "GreyViewController.h"

@interface YellowViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation YellowViewController
- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"blueway" sender:nil];
    
}
- (IBAction)greyButtonClicked:(id)sender {
    GreyViewController *gVC = [self.storyboard instantiateViewControllerWithIdentifier:@"greyview"];
    
    [self.navigationController pushViewController:gVC animated:YES];
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
