//
//  AppDelegate.h
//  Show Desktop
//
//  Created by Wunmin on 15/8/5.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ShowDesktop.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    
    ShowDesktop *desktop;
    NSStatusItem *statusItem;
}

- (IBAction)hideOtherWindows:(id)sender;
- (void)setStatusItem;

@end

