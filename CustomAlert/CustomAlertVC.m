//
//  CustomAlertVC.m
//  CustomAlert
//
//  Created by VADIM FIRSOV on 17/09/2019.
//  Copyright © 2019 VADIM FIRSOV. All rights reserved.
//

#import "CustomAlertVC.h"

@interface CustomAlertVC ()

@property (strong, nonatomic) UIView *alertView;
@property (strong, nonatomic) UIView *topView;
@property (strong, nonatomic) UILabel *headline;
@property (strong, nonatomic) UILabel *bodyLabel;



@end

@implementation CustomAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:0.3];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self addAlertView];
}

- (void)addAlertView {
    
    _alertView = [[UIView alloc] init];
    
    _alertView.backgroundColor = [UIColor colorWithRed:0.28 green:0.28 blue:0.28 alpha:1.0];
    _alertView.layer.borderWidth = 5;
    _alertView.layer.borderColor = [[UIColor colorWithRed:0.90 green:0.90 blue:0.90 alpha:1.0]CGColor];
    _alertView.layer.cornerRadius = 10;


    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_alertView
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1
                                                                 constant:200];

    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_alertView
                                                          attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeLeft
                                                          multiplier:1
                                                           constant:40];
    
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:_alertView
                                                          attribute:NSLayoutAttributeRight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeRight
                                                            multiplier:1
                                                           constant:-40];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_alertView
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute: NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1
                                                                         constant:400];
    
    
    [_alertView setTranslatesAutoresizingMaskIntoConstraints:NO];

    [self.view addSubview:_alertView];

    [self.view addConstraint:topConstraint];
    [self.view addConstraint:leftConstraint];
    [self.view addConstraint:rightConstraint];
    [self.view addConstraint:heightConstraint];
    
    [self addTopView];
    
}

- (void)addTopView {
    
    _topView = [[UIView alloc] init];
    
    _topView.backgroundColor = [UIColor colorWithRed:0.15 green:0.16 blue:0.30 alpha:1.0];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_topView
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:_alertView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1
                                                                      constant:3];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_topView
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:_alertView
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1
                                                                       constant:3];
    
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:_topView
                                                                       attribute:NSLayoutAttributeRight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:_alertView
                                                                       attribute:NSLayoutAttributeRight
                                                                      multiplier:1
                                                                        constant:-3];
 

    [_topView setTranslatesAutoresizingMaskIntoConstraints:NO];

    [_alertView addSubview:_topView];

    [_alertView addConstraint:topConstraint];
    [_alertView addConstraint:leftConstraint];
    [_alertView addConstraint:rightConstraint];
    
    [self addLabel];
    
}

- (void)addLabel {
    
    _headline = [[UILabel alloc] init];
    _headline.backgroundColor = [UIColor colorWithRed:0.30 green:0.15 blue:0.15 alpha:1.0];
    _headline.text = @"Just a test";
    _headline.numberOfLines = 2;
    _headline.textAlignment = NSTextAlignmentCenter;
    _headline.textColor = UIColor.whiteColor;
    [_headline setFont:[UIFont fontWithName:@"Helvetica" size:30]];
    // check if lengh isn't too much?
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:_headline
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:_topView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1
                                                                      constant:16];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:_headline
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:_topView
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1
                                                                       constant:0];
    
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:_headline
                                                                       attribute:NSLayoutAttributeRight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:_topView
                                                                       attribute:NSLayoutAttributeRight
                                                                      multiplier:1
                                                                        constant:0];
    
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:_headline
                                                                       attribute:NSLayoutAttributeBottom
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:_topView
                                                                       attribute:NSLayoutAttributeBottom
                                                                      multiplier:1
                                                                        constant:-16];
    
    [_headline setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [_topView addSubview:_headline];
    
    [_alertView addConstraint:topConstraint];
    [_alertView addConstraint:leftConstraint];
    [_alertView addConstraint:rightConstraint];
    [_alertView addConstraint:bottomConstraint];
    
}

- (void)addBodyLabel {
    
    
    
}

@end
