//
//  AppDelegate.m
//  Show Desktop
//
//  Created by Wunmin on 15/8/5.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self setStatusItem];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)hideOtherWindows:(id)sender {
    
    desktop = [[ShowDesktop alloc] init];
    [desktop minimizeAllWindows];
}

- (void)setStatusItem {
    
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setImage:[NSImage imageNamed:@"barItem.png"]];
    [statusItem setHighlightMode:YES];
    [statusItem setAction:@selector(hideOtherWindows:)];
}

@end
