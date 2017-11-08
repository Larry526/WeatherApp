//
//  City.m
//  Weather
//
//  Created by Larry Luk on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)name temperature:(NSInteger)temperature image:(UIImage *)image {
   
    self = [super init];
    if (self) {
        
        _name = name;
        _temperature = temperature;
        _image = image;
    }
    return self;
}


@end
