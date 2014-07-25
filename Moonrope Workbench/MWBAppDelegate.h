//
//  MWBAppDelegate.h
//  Moonrope Workbench
//
//  Created by Adam Cooke on 24/07/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface MWBAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;

@end
