//
//  City.h
//  Weather
//
//  Created by Larry Luk on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger temperature;
@property (nonatomic, strong) UIImage *image;

- (instancetype) initWithName:(NSString*)name temperature:(NSInteger)temperature image:(UIImage*) image;

@end
