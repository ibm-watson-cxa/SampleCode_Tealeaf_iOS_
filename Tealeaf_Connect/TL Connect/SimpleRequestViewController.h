//
//  SimpleRequestViewController.h
//  TL Connect
//
//  Created by Geoff Heeren on 1/27/14.
//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import <UIKit/UIKit.h>
@interface SimpleRequestViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtCompany;
@property (weak, nonatomic) IBOutlet UILabel *lblValueJobTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblValueJobRole;
@property (weak, nonatomic) IBOutlet UILabel *lblValueIndustry;
@property (weak, nonatomic) IBOutlet UILabel *lblValueCountry;

@property (weak, nonatomic) IBOutlet UILabel *lblValueState;


- (IBAction)btnSubMenuClick:(id)sender;

- (IBAction)btnSubmitFormClick:(id)sender;
@end
