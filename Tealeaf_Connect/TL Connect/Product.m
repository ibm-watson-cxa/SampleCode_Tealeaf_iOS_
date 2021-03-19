//
//  Product.m
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

#import "Product.h"
#import "LinkItem.h"
@implementation Product
-(id)initWithName:(NSString*)name andBlurb:(NSString*)blurb andItems:(NSArray*)items
{
	self=[super init];
	if(self)
	{
		self.name=[name copy];
		self.blurb=[blurb copy];
		self.relatedItems=[NSArray arrayWithArray:items];
	}
	return  self;
}
-(id)initWithDictionary:(NSDictionary*)dict
{
	self=[super init];
	if(self)
	{
		self.prodCode=dict[@"Product"];
		self.name=dict[@"Name"];
		self.subtitle=dict[@"Desc"];
		self.imageName=dict[@"ImageName"];
		NSError *err;
		NSString* filePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",self.prodCode]  ofType:@"txt"];
		NSLog(@"%@",filePath);
		self.blurb=[NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&err];
		if (err!=nil)
			NSLog(@"Blurb problem:%@",[err localizedDescription]);
		self.relatedItems=@[[[LinkItem alloc] initWithLinkName:dict[@"Link1Desc"] andUrl:dict[@"Link1"]],[[LinkItem alloc] initWithLinkName:dict[@"Link2Desc"] andUrl:dict[@"Link2"]]];
	}
	return self;
}
@end
