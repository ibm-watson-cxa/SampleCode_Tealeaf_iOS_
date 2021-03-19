//
//  LinkItem.m
//  TL Connect
//
//  Created by Geoff Heeren on 1/17/14.
//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "LinkItem.h"

@implementation LinkItem
-(id)initWithLinkName:(NSString*)name andUrl:(NSString*)url
{
	self=[super init];
	if (self)
	{
		self.linkName=name;
		self.link=[NSURL URLWithString:url];
	}
	return self;
}
@end
