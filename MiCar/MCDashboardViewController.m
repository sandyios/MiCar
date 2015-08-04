//
//  MCDashboardViewController.m
//  MiCar
//
//  Created by MSP on 31/07/15.
//  Copyright © 2015 Sandy. All rights reserved.
//

#import "MCDashboardViewController.h"
#import "RADashboardTableViewCell.h"
@interface MCDashboardViewController ()
@property (nonatomic, strong) NSMutableArray *dashboardFieldArray;
@property (nonatomic, strong) IBOutlet UITableView *dashboardTableView;

@end

@implementation MCDashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dashboardFieldArray = [[NSMutableArray alloc]initWithObjects:@"Home Page", @"About RightCycle Program", @"My Profile", @"Find Collection Box",@"Want to right cycle now?", @"Contact Us", @"Logout", nil];

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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dashboardFieldArray count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"RADashboardTableViewCell";
    
    RADashboardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[RADashboardTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.customLabel.text = [self.dashboardFieldArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}
@end
