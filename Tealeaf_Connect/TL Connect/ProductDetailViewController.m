//
//  ProductDetailViewController.m
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

#import "ProductDetailViewController.h"
#import "Product.h"
#import "LinkItem.h"
@interface ProductDetailViewController ()
{
	Product *theProduct;
}
@end

@implementation ProductDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	theProduct=[TLConnectHelper getProductFor:self.productType];
	self.lblTitle.text=theProduct.name;
	self.lblSubTitle.text=theProduct.subtitle;
	self.lblBlurb.text=theProduct.blurb;
	self.imgProduct.image=nil;//[UIImage imageNamed:theProduct.imageName];
    [super viewDidLoad];

	
	// Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	//NSMutableArray *imageArray=[TLConnectHelper trackImageView:self.imgProduct withId:theProduct.imageName andIdType:@"local" andType:@"regular"];
	//[[TLFCustomEvent sharedInstance] logScreenLayoutWithViewController:self viewImagesArray:imageArray];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	[tableView cellForRowAtIndexPath:indexPath].selected=NO;
//	if (indexPath.row>[theProduct.relatedItems count])
//		return;
//	LinkItem *itm=theProduct.relatedItems[indexPath.row];
//	[[UIApplication sharedApplication] openURL:itm.link];
	
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return [theProduct.relatedItems count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	if (indexPath.row>[theProduct.relatedItems count])
		return nil;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LinkCell"];
	if (cell==nil)
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LinkCell"];
	
	LinkItem *itm=theProduct.relatedItems[indexPath.row];
	NSArray *ary=[itm.linkName componentsSeparatedByString:@":"];
	cell.textLabel.text=ary[0];
	cell.detailTextLabel.text=ary[1];
	cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
	[TLConnectHelper tagTableCell:cell withIndexPath:indexPath];
	return cell;
	
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
	return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return ROW_HEIGHT;
}
@end
