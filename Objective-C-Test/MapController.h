//
//  MapController.h
//  Objective-C-Test
//
//  Created by iLab on 12/17/15.
//  Copyright (c) 2015 TaipeiTech. All rights reserved.
//

#ifndef fbLogin_MapController_h
#define fbLogin_MapController_h


#endif

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapController : UIViewController
    
    <MKMapViewDelegate, CLLocationManagerDelegate> {
        MKMapView *map;
        CLLocationManager *locationManager;
        
        
        
        
    }



@end
