//
//  RSLightningProject.m
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-24.
//  Copyright 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import "RSLightningProject.h"

@implementation RSLightningProject

@synthesize paletteView;
@synthesize surfaceView;
@synthesize metricsView;


- (id)init
{
    if(nil != (self = [super init]))
    {
	
    }
    return self;
}

- (NSString *)windowNibName
{
	return @"RSLightningProject";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
	[super windowControllerDidLoadNib:aController];

}

@end
