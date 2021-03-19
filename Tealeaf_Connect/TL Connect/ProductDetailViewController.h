//
//  ProductDetailViewController.h
//  TL Connect
//
//  Created by Geoff Heeren on 1/13/14.
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

@interface ProductDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblSubTitle;

@property (weak, nonatomic) IBOutlet UIImageView *imgProduct;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UITextView *lblBlurb;
@property (weak, nonatomic) IBOutlet UITableView *tblMain;
@property (assign) TLProduct productType;
@end
