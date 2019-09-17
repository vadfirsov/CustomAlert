//
//  ViewController.m
//  CustomAlert
//
//  Created by VADIM FIRSOV on 17/09/2019.
//  Copyright © 2019 VADIM FIRSOV. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertVC.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *showAlertButton;
@property (strong, nonatomic) CustomAlertVC *alert;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showAlert:(UIButton *)sender {
    _alert = [[CustomAlertVC alloc] init];
    _alert.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    [self presentViewController:_alert animated:true completion:nil];
    
}


@end
