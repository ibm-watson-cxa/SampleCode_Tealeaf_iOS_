//
//  FacebookViewController.h
//  TL Connect
//
//  Created by Geoff Heeren on 1/10/14.
/*******************************************************************************
 * Licensed Materials - Property of IBM
 * (C) Copyright IBM Corp. 2016
 * US Government Users Restricted Rights - Use, duplication or disclosure
 * restricted by GSA ADP Schedule Contract with IBM Corp.
 ******************************************************************************/

#import <UIKit/UIKit.h>

@interface SocialViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (assign) SocialFeed socialType;
@end

