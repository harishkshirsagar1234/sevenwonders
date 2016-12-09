//
//  ViewController.m
//  MapDemo
//
//  Created by Student-002 on 11/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize point9,point2,point3,point4,point5,point6,point7,point8;
@synthesize btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _map.mapType=MKMapTypeHybrid;
    
//    MKPointAnnotation *point1=[[MKPointAnnotation alloc]init];
    
    point2=[[MKPointAnnotation alloc]init];
    point3=[[MKPointAnnotation alloc]init];
    point4=[[MKPointAnnotation alloc]init];
    point5=[[MKPointAnnotation alloc]init];
    point6=[[MKPointAnnotation alloc]init];
    point7=[[MKPointAnnotation alloc]init];
    point8=[[MKPointAnnotation alloc]init];
    point9=[[MKPointAnnotation alloc]init];

//    point1.title=@"Pune";
//    point1.subtitle=@"Kothrud";
    
    point2.title=@"Taj Mahal";
    point2.subtitle=@"India";

    point3.title=@"Chichen Itza";
    point3.subtitle=@"Mexico";
    
    point4.title=@"Christ the Redeemer";
    point4.subtitle=@"Brazil";
    
    point5.title=@"Colosseum";
    point5.subtitle=@"Italy";
    
    point6.title=@"Great Wall of China";
    point6.subtitle=@"China";
    
    point7.title=@"Machu Picchu (Machu Pikchu)";
    point7.subtitle=@"Peru";
    
    point8.title=@"Petra";
    point8.subtitle=@"Jordan";
    
    point9.title=@"Great Pyramid of Giza";
    point9.subtitle=@"Egypt";

    CLLocationCoordinate2D location1,location2,location3,location4,location5,location6,location7,location8;
    //this is structure
    
//    location.latitude=18.5074;
//    location.longitude=73.8077;
    
    location1.latitude=27.1750;
    location1.longitude=78.0422;
    
    location2.latitude=20.6843;
    location2.longitude=88.5678;
    
    
    location3.latitude=22.9519;
    location3.longitude=43.2105;
    
    location4.latitude=41.8902;
    location4.longitude=12.4922;
    
    location5.latitude=40.4319;
    location5.longitude=116.5704;
    
    location6.latitude=13.1631;
    location6.longitude=72.5450;
    
    location7.latitude=30.3285;
    location7.longitude=35.4444;
    
    location8.latitude=29.9792;
    location8.longitude=31.1342;
    
//    point1.coordinate=location;
    point2.coordinate=location1;
    point3.coordinate=location2;
    point4.coordinate=location3;
    point5.coordinate=location4;
    point6.coordinate=location5;
    point7.coordinate=location6;
    point8.coordinate=location7;
    point9.coordinate=location8;
    
    
    _map.delegate=self;
    
//    [self.map addAnnotation:point1];
    [self.map addAnnotation:point2];
    [self.map addAnnotation:point3];
    [self.map addAnnotation:point4];
    [self.map addAnnotation:point5];
    [self.map addAnnotation:point6];
    [self.map addAnnotation:point7];
    [self.map addAnnotation:point8];
    [self.map addAnnotation:point9];
    
    
    [self.view addSubview:_map];
   
    
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    pin.pinTintColor=[UIColor greenColor];
    pin.canShowCallout=YES;
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 40, 30)];
   
    
    
    if(annotation==point2)
    {
        img.image=[UIImage imageNamed:@"tajmahal"];
        btn1=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn1.frame=CGRectMake(45, 10, 20, 20);
        [btn1 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn1];
    }
    else if (annotation==point3)
    {
        img.image=[UIImage imageNamed:@"Chichen Itza"];
        btn2=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn2.frame=CGRectMake(45, 10, 20, 20);
        [btn2 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn2];
    }
    else if (annotation==point4)
    {
        img.image=[UIImage imageNamed:@"Christ the Redeeme"];
        btn3=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn3.frame=CGRectMake(45, 10, 20, 20);
        [btn3 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn3];
    }
    else if (annotation==point5)
    {
        img.image=[UIImage imageNamed:@"Colosseum"];
        btn4=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn4.frame=CGRectMake(50, 10, 20, 20);
        [btn4 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn4];
    }
    else if (annotation==point6)
    {
        img.image=[UIImage imageNamed:@"Great Wall of China"];
        btn5=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn5.frame=CGRectMake(50, 10, 20, 20);
        [btn5 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn5];
    }
    else if (annotation==point7)
    {
        img.image=[UIImage imageNamed:@"Machu Picchu"];
        btn6=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn6.frame=CGRectMake(50, 10, 20, 20);
        [btn6 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn6];
    }
    else if (annotation==point8)
    {
        img.image=[UIImage imageNamed:@"Petra"];
        btn7=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn7.frame=CGRectMake(50, 10, 20, 20);
        [btn7 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn7];
    }
    else if (annotation==point9)
    {
    img.image=[UIImage imageNamed:@"Great Pyramid of Giza"];
        btn8=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn8.frame=CGRectMake(50, 10, 20, 20);
        [btn8 addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];
        [view1 addSubview:btn8];
    }
    [view1 addSubview:img];
    

    pin.rightCalloutAccessoryView=view1;
    return pin;
    
}
-(void)btnclicked:(id)sender
{
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
     SecondViewController *svc= [storyboard instantiateViewControllerWithIdentifier:@"secondviewcontroller"];
    
    
    if(sender==btn1)
    {
        
        svc.imgstr=@"tajmahal";
        svc.descstr=@"An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn3)
    {
        svc.imgstr=@"Christ the Redeeme";
        svc.descstr=@"An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn2)
    {
        svc.imgstr=@"Chichen Itza";
        
        svc.descstr=@"Chichén Itzá is a large Mayan city famous for a large, pyramid temple built by the Maya civilization. It is on the Yucatán Peninsula, about 120 km to the east of Mérida. The temple, called Castillo, is about 1 km in diameter.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn4)
    {
        svc.imgstr=@"Colosseum";
        svc.descstr=@"The Colosseum's original Latin name was Amphitheatrum Flavium, often anglicized as Flavian Amphitheater. The building was constructed by emperors of the Flavian dynasty, following the reign of Nero. This name is still used in modern English, but generally the structure is better known as the Colosseum.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn5)
    {
        
        svc.imgstr=@"Great Wall of China";
        svc.descstr=@"The Great Wall, one of the greatest wonders of the world, was listed as a World Heritage by UNESCO in 1987. Just like a gigantic dragon, it winds up and down across deserts, grasslands, mountains and plateaus, stretching approximately 13,170 miles (21,196 kilometers) from east to west of China.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn6)
    {
        svc.imgstr=@"Machu Picchu";
        svc.descstr=@"It is located in the Cusco Region, Urubamba Province, Machupicchu District in Peru, above the Sacred Valley, which is 80 kilometres (50 mi) northwest of Cuzco and through which the Urubamba River flows. Most archaeologists believe that Machu Picchu was built as an estate for the Inca emperor Pachacuti (1438–1472).";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn7)
    {
        svc.imgstr=@"Petra";
        svc.descstr=@"Petra (Arabic: البتراء, Al-Batrāʾ; Ancient Greek: Πέτρα), originally known to the Nabataeans as Raqmu, is a historical and archaeological city in southern Jordan. The city is famous for its rock-cut architecture and water conduit system.";
        [self.navigationController pushViewController:svc animated:YES];
    }
    else if (sender==btn8)
    {
        
        svc.imgstr=@"Great Pyramid of Giza";
        svc.descstr=@"The Great Pyramid of Giza is the oldest and largest of the three pyramids in the Giza pyramid complex bordering what is now El Giza, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.";
        [self.navigationController pushViewController:svc animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
