//
//  RSLPaletteQuartzView.m
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-24.
//  Copyright 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import "RSLPaletteQuartzView.h"


@implementation RSLPaletteQuartzView

@synthesize elements;

- (id)initWithFrame:(NSRect)frame
{
    if(nil != (self = [super initWithFrame:frame]))
    {
			// read in the default set of RSLDesignElementMO objects and cache in elements array	
			// find the plist definition files for the default set of elemenets in the bundle
			// open and import the objects in the plists, add them to the array elements
			// draw the elements to the paletteView for the main app
		
		
		
    }
    
    return self;
}

- (void)dealloc
{
	[self setElements: nil];
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
	NSLog(@"paletteView received dirtyRect: [%f,%f],[%f,%f]",dirtyRect.origin.x,dirtyRect.origin.y,dirtyRect.size.width,dirtyRect.size.height);
		//CGContextRef myContext = [[NSGraphicsContext currentContext] graphicsPort];
	
	if(NSIntersectsRect([self frame], dirtyRect))
	{
		[[NSColor whiteColor] set];
	    NSRectFill(dirtyRect);
    
		RSLDesignElementMO *currentElement = nil;
		for(currentElement in [self elements])
		{
			[currentElement drawRect:dirtyRect];
		}
	}
	
	/*
		//								 R  G  B  A
    CGContextSetRGBFillColor (myContext, 1, 0, 0, 1);
    CGContextFillRect (myContext, CGRectMake (0, 0, 200, 100));
	
    CGContextSetRGBFillColor (myContext, 0, 0, 1, .5);
    CGContextFillRect (myContext, CGRectMake (0, 0, 100, 200));
	 */
}

@end
