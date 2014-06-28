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
    Password *aPassword = [[Password alloc] initWithPassStrength:10];
    [self setPassword:aPassword];
    [self syncPassLengthUIs];
    [self setPassStrengthIndicatorLevel];
}

- (IBAction)setUName:(id)sender {
    NSString *uname = [_uNameTextFeild stringValue];
    //NSLog(@"The username is: %@", uname);
    [[self password] setUName:uname];
}

- (IBAction)setDName:(id)sender {
    NSString *dname = [_dNameTextFeild stringValue];
    //NSLog(@"The website is: %@", dname);
    [[self password] setDName:dname];
}

- (IBAction)setUseSpecChar:(id)sender {
    int usc = [sender intValue];
    [[self password] setUseSpecChar:usc];
}

- (IBAction)setUseNumbers:(id)sender {
    int unums = [sender intValue];
    [[self password] setUseNumbers:unums];
}

- (IBAction)setUseUppers:(id)sender {
    int uuppers = [sender intValue];
    [[self password] setUseUppers:uuppers];
}

- (IBAction)setUseLowers:(id)sender {
    int ulowers = [sender intValue];
    [[self password] setUseLowers:ulowers];
}

- (IBAction)setPassLength:(id)sender {
    int passlen = [sender intValue];
    [[self password] setPassLength:passlen];
    [self syncPassLengthUIs];
}

- (IBAction)generatePassword:(id)sender {
    [self setPassdict:[[NSDictionary alloc]init]];
    [self setPassdict:[[self password] genPassword]];
    [self setPasswordTextFeild:[[self passdict] objectForKey:@"password"]];
    [[self passStrengthIndicator] setIntValue: [[self passdict] objectForKey:@"passStrength"]];
}

- (void) setPassStrengthIndicatorLevel
{
    int currPassStrength = [[self password] passStrength];
    [[self passStrengthIndicator] setIntValue:currPassStrength];
}

- (void) syncPassLengthUIs
{
    int currPassLength = [[self password] passLength];
    [[self passLengthStepper] setIntValue:currPassLength];
    [[self passLengthTextFeild] setIntValue:currPassLength];
}

- (void) setPasswordTextFeild:(NSString *)pw
{
    [[self passwordFeild] setStringValue:pw];
}

@end
