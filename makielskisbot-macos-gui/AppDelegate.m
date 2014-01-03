//
//  PDAppDelegate.m
//  StatusBar
//
//  Created by Julian Meyer on 9/23/12.
//  Copyright (c) 2012 Julian Meyer. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
  [statusItem setMenu:statusMenu];
  [statusItem setImage:[NSImage imageNamed:@"statusIconBot"]];
  [statusItem setHighlightMode:YES];
}

- (IBAction)bot:(id)sender {
  [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://makielski.net/webui"]];
}

- (IBAction)quit:(id)sender {
  [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
}

@end