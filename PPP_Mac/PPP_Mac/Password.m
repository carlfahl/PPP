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
    
    srand(time(NULL));
    if ([self useSpecChar])
    {
        num_types++;
    }
    if ([self useNumbers])
    {
        num_types++;
    }
    if ([self useLowers])
    {
        num_types++;
    }
    if ([self useUppers])
    {
        num_types++;
    }
    
    for (int i; i<[self passLength]; i++) {
        switch (rand()%num_types) {
            case 0:
                idex = rand()%10;
                break;
            case 1:
                idex = rand()%10;
                break;
            case 2:
                idex = rand()%26;
                break;
            case 3:
                idex = rand()%26;
                break;
            default:
                break;
        }
    }
}

@end
