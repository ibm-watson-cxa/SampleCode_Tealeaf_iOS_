//
//  WebViewHandler.m
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

#import "WebViewHandler.h"

@implementation WebViewHandler

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
	NSLog(@"webView:shouldStartLoadWithRequest:%@",[[request URL] absoluteString]);
	return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
	
	
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
	
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
	
}
@end
