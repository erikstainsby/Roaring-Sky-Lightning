//
//  RSLDesignElementMO.h
//  RSLightning
//
//  Created by Erik Stainsby on 11-06-27.
//  Copyright (c) 2011 Roaring Sky Software (Canada). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class RSLDesignElementMO;

@interface RSLDesignElementMO : NSManagedObject {
@private
	
}
@property (nonatomic, retain) id point;
@property (nonatomic, retain) id size;
@property (nonatomic, retain) NSString * idstring;
@property (nonatomic, retain) RSLDesignElementMO * parent;
@property (nonatomic, retain) NSSet* children;

- (void)drawRect:(NSRect) dirtyRect;

@end
