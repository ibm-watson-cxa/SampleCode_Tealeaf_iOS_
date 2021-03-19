//
//  TextFieldHandler.m
//  TLFUILab_Tabbed
//
//  Created by Geoff Heeren on 11/25/13.
//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "TextFieldHandler.h"

@implementation TextFieldHandler
#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
	NSLog(@"textFieldShouldBeginEditing:");
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
	[textField resignFirstResponder];
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
#pragma mark UITextViewDelegate
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
	NSLog(@"textViewShouldBeginEditing:");
	return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
	NSLog(@"textViewDidBeginEditing:");
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
	NSLog(@"textViewShouldEndEditing:");
	return YES;
}
- (void)textViewDidEndEditing:(UITextView *)textView{
	[textView resignFirstResponder];
	NSLog(@"textViewDidEndEditing:");
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

	NSLog(@"textView:shouldChangeTextInRange:%@",text);
	return YES;
}
- (void)textViewDidChangeSelection:(UITextView *)textView{
	NSLog(@"textViewDidChangeSelection:");
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange{
	NSLog(@"textView:shouldInteractWithTextAttachment:");
	return YES;
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange{
	NSLog(@"textView:shouldInteractWithURL:%@",[URL absoluteString]);
	return YES;
}
@end
