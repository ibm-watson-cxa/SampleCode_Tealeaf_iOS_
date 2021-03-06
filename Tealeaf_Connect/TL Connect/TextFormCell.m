//
//  TextFormCell.m
//  TL Connect
//
//  Created by Geoff Heeren on 1/15/14.
//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "TextFormCell.h"
#import "TextFieldHandler.h"
#import "RequestViewController.h"
@interface TextFormCell()
{
	TextFieldHandler *txtHandler;
}
@end
@implementation TextFormCell

//-(id)initWithCoder:(NSCoder *)aDecoder{
//	self=[super initWithCoder:aDecoder];
//	if(self)
//	{
//		txtHandler=[[TextFieldHandler alloc] init];
//		self.txtText.delegate=txtHandler;
//	}
//	return self;
//	
//}
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
	self.txtText.delegate=self;
	self.lblLabel.text=dict[kRV_Key_Label];
	self.txtText.text=dict[kRV_Key_Value];
	self.dataDict=dict;
	if ([dict[kRV_Key_Label] rangeOfString:@"phone" options:NSCaseInsensitiveSearch].location!=NSNotFound)
	{
		self.txtText.keyboardType=UIKeyboardTypePhonePad;
		self.txtText.autocapitalizationType=UITextAutocapitalizationTypeNone;
	}
	else if ([dict[kRV_Key_Label] rangeOfString:@"email" options:NSCaseInsensitiveSearch].location!=NSNotFound)
	{
		self.txtText.keyboardType=UIKeyboardTypeEmailAddress;
		self.txtText.autocapitalizationType=UITextAutocapitalizationTypeNone;
	}
	else
	{
		self.txtText.keyboardType=UIKeyboardTypeDefault;
		self.txtText.autocapitalizationType=UITextAutocapitalizationTypeWords;
	}
}
#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
	self.parent.activeField=textField;
	self.parent.activeCell=self;
	[self setSelected:YES animated:YES];
	return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
	NSLog(@"textFieldDidBeginEditing:");
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
	NSLog(@"textFieldShouldEndEditing:");
	return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
	self.parent.activeField=nil;
	self.parent.activeCell=nil;
	[textField resignFirstResponder];
	self.dataDict[kRV_Key_Value]=self.txtText.text;
	NSLog(@"textFieldDidEndEditing:");
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
	NSLog(@"textFieldShouldClear:");
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
	[textField resignFirstResponder];
	NSLog(@"textFieldShouldReturn:");
	return YES;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	NSLog(@"textField:shouldChangeCharactersInRange:");
	return YES;
}
@end
