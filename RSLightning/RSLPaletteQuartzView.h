//
//  RSLPaletteQuartzView.h
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-24.
//  Copyright 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RSLDesignElementMO.h"

@interface RSLPaletteQuartzView : NSView {
@private
    IBOutlet NSArray *elements;
}

@property (readwrite,retain) NSArray *elements;

@end
