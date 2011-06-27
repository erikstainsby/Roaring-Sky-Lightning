//
//  RSLightningProject.h
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-24.
//  Copyright 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RSLightningProject : NSPersistentDocument {
@private
	IBOutlet NSView *paletteView;
	IBOutlet NSView *surfaceView;
	IBOutlet NSView *metricsView;
}


@property (readwrite,retain) NSView *paletteView;
@property (readwrite,retain) NSView *surfaceView;
@property (readwrite,retain) NSView *metricsView;

- (void)drawRect:(NSRect)dirtyRect;

@end
