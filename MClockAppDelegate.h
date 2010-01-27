//
//  MClockAppDelegate.h
//  MClock
//
//  Created by Masato IKEDA on 10/01/27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MClockAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *currentClock;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *currentClock;

- (void)updateByTimer:(NSTimer *)timer;

@end
