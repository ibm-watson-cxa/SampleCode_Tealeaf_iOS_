//
//  Product.h
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

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (nonatomic) NSString* prodCode;
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* subtitle;
@property (nonatomic) NSString *blurb;
@property (nonatomic) NSString *imageName;
@property (nonatomic) NSArray *relatedItems;
-(id)initWithName:(NSString*)name andBlurb:(NSString*)blurb andItems:(NSArray*)items;
-(id)initWithDictionary:(NSDictionary*)dict;
@end
