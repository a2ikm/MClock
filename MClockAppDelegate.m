//
//  MClockAppDelegate.m
//  MClock
//
//  Created by Masato IKEDA on 10/01/27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MClockAppDelegate.h"

@implementation MClockAppDelegate

@synthesize window, currentClock;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.5
													  target:self
													selector:@selector(updateByTimer:)
													userInfo:nil
													 repeats:YES];
	[[NSRunLoop mainRunLoop] addTimer:timer
							  forMode:NSRunLoopCommonModes];
	
	[window setLevel:NSFloatingWindowLevel];
}

- (void)updateByTimer:(NSTimer *)timer {
	NSDate *now = [[NSDate alloc] init];
	NSString *str = [now descriptionWithCalendarFormat:@"%H:%M:%S"
											  timeZone:nil
												locale:nil];
	[currentClock setStringValue:str];
	[now release];
}

@end
