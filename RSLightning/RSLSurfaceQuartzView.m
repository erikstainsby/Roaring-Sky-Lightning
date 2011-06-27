//
//  RSLSurfaceQuartzView.m
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-24.
//  Copyright 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import "RSLSurfaceQuartzView.h"


@implementation RSLSurfaceQuartzView

- (id)initWithFrame:(NSRect)frame
{
    if(nil != (self = [super initWithFrame:frame]))
    {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
	CGContextRef myContext = [[NSGraphicsContext currentContext] graphicsPort];
		// ********** Your drawing code here ********** 
    CGContextSetRGBFillColor (myContext, 1, 0, 0, 1);
    CGContextFillRect (myContext, CGRectMake (0, 0, 200, 100 ));
    CGContextSetRGBFillColor (myContext, 0, 0, 1, .5);
    CGContextFillRect (myContext, CGRectMake (0, 0, 100, 200));
}

@end
