//
//  CityViewController.m
//  Weather
//
//  Created by Larry Luk on 2017-11-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@property (nonatomic, strong) UILabel *weatherState;
@property (nonatomic, strong) UIImageView *weatherImage;
@property (nonatomic, strong) UILabel *weatherTemp;
@property (nonatomic, strong) UIButton *detailsButton;

@end

@implementation CityViewController

-(instancetype)initWithCity:(City *)city {
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

-(void)showWeatherDetail{
    
    DetailedViewController *detailedVC = [[DetailedViewController alloc]init];
    [self.navigationController pushViewController:detailedVC animated:YES];
    
}

-(void)didTapButton {
    [self showWeatherDetail];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.weatherState = [[UILabel alloc] initWithFrame:CGRectMake(170, 130, 100, 100)];
    self.weatherState.text = self.city.name;
    self.weatherState.textColor = UIColor.whiteColor;
    [self.view addSubview:self.weatherState];
    
    
    self.weatherTemp = [[UILabel alloc] initWithFrame:CGRectMake(170, 170, 150, 100)];
    self.weatherTemp.text = [NSString stringWithFormat:@"Temperate: %ld", (long)self.city.temperature];
    self.weatherTemp.textColor = UIColor.whiteColor;
    [self.view addSubview:self.weatherTemp];
    
    self.weatherImage = [[UIImageView alloc] initWithFrame:CGRectMake(120, 250, 150, 150)];
    self.weatherImage.image = [UIImage imageNamed:self.city.name];
    [self.view addSubview:self.weatherImage];
    
    self.detailsButton = [[UIButton alloc] initWithFrame:CGRectMake(145, 400, 100, 100)];
    [self.detailsButton setTitle:@"Details" forState:UIControlStateNormal];
    [self.detailsButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [self.detailsButton addTarget:self action:@selector(didTapButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.detailsButton];
    

}



@end
