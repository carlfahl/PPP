//
//  Password.m
//  PPP_Mac
//
//  Created by Carl on 6/24/14.
//  Copyright (c) 2014 Xformatics. All rights reserved.
//

#import "Password.h"
#include <stdlib.h>
#include <time.h>

@implementation Password

- (id) initWithPassStrength:(int)strength
{
    if (self = [super init])
    {
        [self setPassStrength:strength];
    }
    return self;
}

- (void) genPassword
{
    int num_types, idex;
    NSString* numString;
    NSRange stidex;
    
    num_types = 0;
    
    [self setPassword:[[NSMutableString alloc] init]];
    //[self setPassword:[[NSMutableString alloc] initWithCapacity:10]];
    //[self setPassword:[NSMutableString stringWithString:@""]];
    
    stidex.length = 1;
    
    [self setLetters:@"abcdefghijklmnopqrstuvwxyz"];
    [self setSpecChars:@"!@#$%^&*()"];
    
    NSLog(@"%1i %1i %1i %1i %1i", [self useSpecChar], [self useNumbers], [self useLowers], [self useUppers], [self passLength]);
    
    srand(time(NULL));
    if ([self useSpecChar] == 1)
    {
        num_types++;
    }
    if ([self useNumbers] == 1)
    {
        num_types++;
    }
    if ([self useLowers] == 1)
    {
        num_types++;
    }
    if ([self useUppers] == 1)
    {
        num_types++;
    }
    
    NSLog(@"%1i", num_types);
    
    for (int i=0; i<[self passLength]; i++)
    {
        switch (rand()%num_types)
        {
            case 0:
                idex = rand()%10;
                stidex.location = idex;
                [[self password] appendString:[[self specChars] substringWithRange:stidex]];
                break;
            case 1:
                numString = [NSString stringWithFormat:@"%1i", rand()%10];
                [[self password] appendString:numString];
                break;
            case 2:
                idex = rand()%26;
                stidex.location = idex;
                [[self password] appendString:[[self letters] substringWithRange:stidex]];
                break;
            case 3:
                idex = rand()%26;
                stidex.location = idex;
                [[self password] appendString:[[[self letters] substringWithRange:stidex] uppercaseString]];
                break;
            default:
                NSLog(@"Should have added something");
                break;
        }
    }
    
    NSLog(@"%@", [self password]);
    
}

@end
