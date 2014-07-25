//
//  MWBJavascript.m
//  Moonrope Workbench
//
//  Created by Adam Cooke on 25/07/2014.
//  Copyright (c) 2014 Adam Cooke. All rights reserved.
//

#import "MWBJavascript.h"

@implementation MWBJavascript


- (void)saveState:(NSString *)json {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:json forKey:@"currentState"];
}

- (NSString *)currentState {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults objectForKey:@"currentState"];
}


+ (BOOL)isSelectorExcludedFromWebScript:(SEL)aSelector
{
    if (aSelector == @selector(saveState:) || aSelector == @selector(currentState)) return NO;
    return YES;
}

@end
