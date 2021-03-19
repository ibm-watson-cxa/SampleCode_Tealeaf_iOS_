//
//  TLConnectHelper.h
//  TL Connect
//
//  Created by Geoff Heeren on 1/14/14.
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
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

FOUNDATION_EXPORT float const ROW_HEIGHT;
FOUNDATION_EXPORT const NSString* kRV_Key_Label;
FOUNDATION_EXPORT const NSString* kRV_Key_Value;
FOUNDATION_EXPORT const NSString* kRV_Key_List;
FOUNDATION_EXPORT const NSString* kRV_Key_Selected;
typedef enum {SocialFeed_Facebook=0,SocialFeed_LinkedIn=1,SocialFeed_Twitter=2} SocialFeed;
typedef enum {TLProduct_CX=0,TLProduct_Mobile=1,TLProduct_Impact=2,TLProduct_Overstat=3,TLProduct_Reveal}TLProduct ;
@class Product;
@interface TLConnectHelper : NSObject
+(NSString*)contactPhone;
+(NSString*)contactEmail;
+(NSString*)getSocialUrl:(SocialFeed)feed;
+(NSString*)getSocialAppUrl:(SocialFeed)feed;
+(NSArray*)getProducts;
+(Product*)getProductFor:(TLProduct)productType;
+(CLLocationCoordinate2D)getTLOfficeCoord;

+(void)tagTableCell:(UITableViewCell*)cell withIndexPath:(NSIndexPath*)path;
+(void)dontClickThat;
+(void)logView:(UIView*)view;

+(NSMutableArray*)trackImageView:(UIImageView*)imgView withId:(NSString*)imgId andIdType:(NSString*)idType andType:(NSString*)imgType;
@end
