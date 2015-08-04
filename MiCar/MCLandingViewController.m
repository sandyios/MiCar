//
//  MCLandingViewController.m
//  MiCar
//
//  Created by MSP on 31/07/15.
//  Copyright © 2015 Sandy. All rights reserved.
//

#import "MCLandingViewController.h"
#import "SWRevealViewController.h"
@interface MCLandingViewController ()

@end

@implementation MCLandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Menu_Dots"] style:UIBarButtonItemStyleDone target:self.revealViewController action:@selector(rightRevealToggle:)];
    // UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithCustomView:someButton];
    [menuButton setImageInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    self.navigationItem.leftBarButtonItem = menuButton;
    menuButton.tintColor = [UIColor whiteColor];
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [self.view  setBackgroundColor:[UIColor redColor]];
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
