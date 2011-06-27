//
//  RSLDesignElementMO.m
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-27.
//  Copyright (c) 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import "RSLDesignElementMO.h"


@implementation RSLDesignElementMO
@dynamic point;
@dynamic size;
@dynamic idstring;
@dynamic parent;
@dynamic children;


- (void)drawRect:(NSRect)dirtyRect
{
	NSLog(@"Palette received drawRect: {[%@,%@],[%@,%@]}",dirtyRect.origin.x,dirtyRect.origin.y,dirtyRect.size.width, dirtyRect.size.height);
	
	NSString *rectRep = [NSString stringWithFormat: @"%@,%@", [self point],[self size]];
	NSRect frame = NSRectFromString(rectRep);
	
	if(NSIntersectsRect(frame, dirtyRect))
	{
		CGContextRef myContext = [[NSGraphicsContext currentContext] graphicsPort];	
		
			// erase current content of dirtyRect
		[[NSColor whiteColor] set];
	    NSRectFill(dirtyRect);
		
			// mechanics of drawing self from paletteView prototype rules
			// plus own styling rules ...
		
		
		
		/*
		 //								 R  G  B  A
		 CGContextSetRGBFillColor (myContext, 1, 0, 0, 1);
		 CGContextFillRect (myContext, CGRectMake (0, 0, 200, 100));
		 
		 CGContextSetRGBFillColor (myContext, 0, 0, 1, .5);
		 CGContextFillRect (myContext, CGRectMake (0, 0, 100, 200));
		 */
		
		
		RSLDesignElementMO *childElement = nil;
		for(childElement in [self children])
		{
			[childElement drawRect:dirtyRect];
		}
	}
}

	/// FACTORY CODE BELOW ///


- (void)addChildrenObject:(RSLDesignElementMO *)value {    
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"children"] addObject:value];
    [self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)removeChildrenObject:(RSLDesignElementMO *)value {
    NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value count:1];
    [self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [[self primitiveValueForKey:@"children"] removeObject:value];
    [self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
    [changedObjects release];
}

- (void)addChildren:(NSSet *)value {    
    [self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"children"] unionSet:value];
    [self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value];
}

- (void)removeChildren:(NSSet *)value {
    [self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
    [[self primitiveValueForKey:@"children"] minusSet:value];
    [self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value];
}


@end
