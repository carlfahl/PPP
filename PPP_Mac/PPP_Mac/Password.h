//
//  Password.h
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Password : NSObject

@property (assign) int passLength;
@property (assign) int useUppers;
@property (assign) int useLowers;
@property (assign) int useSpecChar;
@property (assign) int useNumbers;
@property (assign) NSString* uName;
@property (assign) NSString* dName;
@property (assign) int passStrength;
@property (assign) NSMutableString* password;

- (id) initWithPassStrength: (int) strength;
- (void) genPassword;

@end
