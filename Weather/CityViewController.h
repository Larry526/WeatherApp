//
//  CityViewController.h
//  Weather
//
//  Created by Larry Luk on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "DetailedViewController.h"


@interface CityViewController : UIViewController

@property (nonatomic, strong) City *city;
@property (nonatomic, strong) UIButton* detailButton;


-(instancetype) initWithCity:(City*)city;

-(void) showWeatherDetail;

@end
