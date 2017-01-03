//
//  ViewController.m
//  GetWifiNameAndRouterMac
//
//  Created by WangJiadong on 2017/1/3.
//  Copyright © 2017年 WangJiadong. All rights reserved.
//

#import "ViewController.h"

#import "getWifiAndMac.h"


@interface ViewController ()
    
@property (weak, nonatomic) IBOutlet UILabel *ip;
@property (weak, nonatomic) IBOutlet UILabel *mac;
    

@end

@implementation ViewController
    
- (IBAction)getWifiAndMac:(id)sender {
    
    [self getWifiAndMac];
    
}
    
- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self getWifiAndMac];
    
}
-(void)getWifiAndMac{
    
    self.ip.text = [getWifiAndMac getWiFi];
    self.mac.text = [getWifiAndMac getMac];
    
}


@end
