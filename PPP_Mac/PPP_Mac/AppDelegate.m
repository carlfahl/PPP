//
//  AppDelegate.m
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import "AppDelegate.h"
#import "Password.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Password *aPassword = [[Password alloc] init];
    [self setPassword:aPassword];
}

- (IBAction)setUName:(NSTextField *)sender {
}

- (IBAction)setDName:(NSTextField *)sender {
}

- (IBAction)setUseSpecChar:(id)sender {
}

- (IBAction)setUseNumbers:(id)sender {
}

- (IBAction)setUseUppers:(id)sender {
}

- (IBAction)setUseLowers:(id)sender {
    NSLog(@"Use Lowers: %1i", [sender intValue]);
}

- (IBAction)setPassLength:(id)sender {
    NSLog(@"Will make a password of length %2i", [sender intValue]);
}

- (IBAction)incrDecPassLength:(id)sender {
}

- (IBAction)generatePassword:(id)sender {
    NSLog(@"Got the signal to generate password");
}
@end
