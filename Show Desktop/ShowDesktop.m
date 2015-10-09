//
//  ShowDesktop.m
//  Show Desktop
//
//  Created by Wunmin on 15/8/5.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "ShowDesktop.h"

@implementation ShowDesktop

- (void)minimizeAllWindows {
    
    CGEventSourceRef source = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
   
    // command
    CGEventRef commandDown = CGEventCreateKeyboardEvent(source, kVK_Command, true);
    CGEventRef commandUp = CGEventCreateKeyboardEvent(source, kVK_Command, false);
    CGEventSetFlags(commandDown, kCGEventFlagMaskCommand);
    CGEventSetFlags(commandDown, kCGEventFlagMaskCommand);
    
    // option
    CGEventRef optionDown = CGEventCreateKeyboardEvent(source, kVK_Option, true);
    CGEventRef optionUp = CGEventCreateKeyboardEvent(source, kVK_Option, false);
    CGEventSetFlags(optionDown, kCGEventFlagMaskAlternate);
    CGEventSetFlags(optionUp, kCGEventFlagMaskAlternate);
    
    // h
    CGEventRef hDown = CGEventCreateKeyboardEvent(source, kVK_ANSI_H, true);
    CGEventRef hUp = CGEventCreateKeyboardEvent(source, kVK_ANSI_H, false);
    CGEventSetFlags(hDown, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    CGEventSetFlags(hUp, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    
    // m
    CGEventRef mDown = CGEventCreateKeyboardEvent(source, kVK_ANSI_M, true);
    CGEventRef mUp = CGEventCreateKeyboardEvent(source, kVK_ANSI_M, false);
    CGEventSetFlags(mDown, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    CGEventSetFlags(mUp, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    
    CGEventTapLocation loc = kCGHIDEventTap;
    CGEventPost(loc, commandDown);
    CGEventPost(loc, optionDown);
    CGEventPost(loc, hDown);
    CGEventPost(loc, mDown);
    
    CGEventPost(loc, commandUp);
    CGEventPost(loc, optionUp);
    CGEventPost(loc, hUp);
    CGEventPost(loc, mUp);
    
    CFRelease(commandDown);
    CFRelease(optionDown);
    CFRelease(hDown);
    CFRelease(mDown);
    CFRelease(commandUp);
    CFRelease(optionUp);
    CFRelease(hUp);
    CFRelease(mUp);
    CFRelease(source);
}

@end
