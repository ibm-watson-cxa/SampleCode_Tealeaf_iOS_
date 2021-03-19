//
//  LabelFormCell.m
//  TL Connect
//
//  Created by Geoff Heeren on 1/24/14.
//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "LabelFormCell.h"
#import "RequestViewController.h"


@implementation LabelFormCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)loadDataWithDictionary:(NSMutableDictionary*)dict
{
	self.lblLabel.text=dict[kRV_Key_Label];
	self.lblValue.text=dict[kRV_Key_Value];
	self.dataDict=dict;

}

@end
