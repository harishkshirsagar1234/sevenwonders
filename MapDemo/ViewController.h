//
//  ViewController.h
//  MapDemo
//
//  Created by Student-002 on 11/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "SecondViewController.h"


@interface ViewController : UIViewController<MKMapViewDelegate>

@property (nonatomic, retain)MKMapView *map;
@property (nonatomic, retain)MKPointAnnotation *point9,*point2,*point3,*point4,*point5,*point6,*point7,*point8;
@property (nonatomic, retain)UIButton *btn1,*btn2,*btn3,*btn4,*btn5,*btn6,*btn7,*btn8;
@end

