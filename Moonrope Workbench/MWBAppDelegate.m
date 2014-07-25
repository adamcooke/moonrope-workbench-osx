//
//  MWBAppDelegate.m
//  Moonrope Workbench
//
//  Created by Adam Cooke on 24/07/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import "MWBAppDelegate.h"
#import "MWBJavascript.h"

@implementation MWBAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    MWBJavascript *js = [[MWBJavascript alloc] init];
    id win = [self.webView windowScriptObject];
    [win setValue:js forKey:@"mwbJS"];

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"workbench"];
    NSURL* fileURL = [NSURL fileURLWithPath:filePath];
    NSURLRequest* request = [NSURLRequest requestWithURL:fileURL cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10];
    
    [[self.webView mainFrame] loadRequest:request];
    self.webView.UIDelegate = self;
    self.webView.resourceLoadDelegate = self;
}

- (void)webView:(WebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WebFrame *)frame {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [alert setMessageText:message];
    [alert runModal];
}

@end
