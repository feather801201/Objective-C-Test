//
//  MapController.m
//  Objective-C-Test
//
//  Created by iLab on 12/17/15.
//  Copyright (c) 2015 TaipeiTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapController.h"


@implementation MapController

- (void)viewDidLoad
{
    map = [[MKMapView alloc] initWithFrame:[self.view bounds]];
    map.showsUserLocation = YES;
    map.mapType = MKMapTypeStandard;
    
    CLLocationCoordinate2D coords = CLLocationCoordinate2DMake(25.042505,121.535359);
    
    float zoomLevel = 0.02;
    MKCoordinateRegion region = MKCoordinateRegionMake(coords, MKCoordinateSpanMake(zoomLevel, zoomLevel));
    [map setRegion:[map regionThatFits:region] animated:YES];
    
    [self.view addSubview:map];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

@end