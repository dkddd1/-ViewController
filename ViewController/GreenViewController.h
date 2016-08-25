//
//  GreenViewController.h
//  ViewController
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 ldcc. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol GreenViewDelegate
- (void)changeText;
@end

@interface GreenViewController : UIViewController
@property (nonatomic, strong) id<GreenViewDelegate> pVC;
@end
