//
//  levelfivea.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "levelfivea.h"
#import "levelfiveEnd.h"
#import "levelfive.h"

@implementation levelfivea
@synthesize slider;
@synthesize slider1;

-(void)sliders{
    number++;
    type = 0;
    type1 = 0;
    direction = number;
    direction1 = number;
    onScreen = 1;
    if (number == 1) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-110, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        
        
        
        CGRect frame1 = CGRectMake(0, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
    }
    if (number == 2) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        
    }
    if (number == 3) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-110, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
    }
    if (number == 4) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
    }
    if (number == 5) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-175, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
    }
    if (number == 6) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
    }
    if (number == 7) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(65, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 8) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(15, 380, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98;
        
        [self.view addSubview:slider];
    }
    if (number == 9) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(15, 200, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2;
        
        [self.view addSubview:slider];
    }
    if (number == 10) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(15, 30, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 95, 290, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        
        
        
        [self.view addSubview:slider1];
    }
    if (number == 11) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-175, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(-110, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
           
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
           
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                           forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
        }
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 12) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
        
    }
    if (number == 13) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-110, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
    }

    
}


-(void)check{
    if (type == 0 && slider.value < 4){
        if (canSound == 0) {
          
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction == 1) {
            position = CGPointMake(102.0f, 800.0f);
        }
        if (direction == 3) {
            position = CGPointMake(102.0f, 800.0f);
        }
        if (direction == 5) {
            position = CGPointMake(34.0f, 800.0f);
        }
        if (direction == 7) {
            position = CGPointMake(278.0f, 800.0f);
        }
        if (direction == 8) {
            position = CGPointMake(-338.0f, 434.0f);
        }
        if (direction == 10) {
            position = CGPointMake(-338.0f, 64.0f);
        }
        if (direction == 11) {
            position = CGPointMake(34.0f, 800.0f);
        }
        if (direction == 13) {
            position = CGPointMake(102.0f, 800.0f);
        }
        slider.center = position;
        [UIView commitAnimations];
        
      }
    
    if (type == 1 && slider.value > 98){
        if (canSound == 0) {
          
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction == 2) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 4) {
             position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 6) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 9) {
            position = CGPointMake(658.0f, 227.0f);
        }
        if (direction == 12) {
            position = CGPointMake(160.0f, -220.0f);
        }
        slider.center = position;
        [UIView commitAnimations];
        
    }
    if (onScreen == 0 && direction == 13) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stoplevelfivetimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high5"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current5"];
        
        if (sup ==0) {
            [appDelegate savehigh5];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh5];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }  
        levelfiveEnd *Sword = [[levelfiveEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];

    }
    if (onScreen == 0) {
        [self sliders];
    }
}

-(void)check1{
    if (type1 == 0 && slider1.value < 4){
        if (canSound == 0) {
           
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction1 == 1) {
            position = CGPointMake(216.0f, 800.0f);
        }
        if (direction1 == 3) {
            position = CGPointMake(216.0f, 800.0f);
        }
        if (direction1 == 7) {
            position = CGPointMake(216.0f, 800.0f);
        }
        if (direction1 == 10) {
            position = CGPointMake(-338.0f, 140.0f);
        }
        if (direction1 == 11) {
            position = CGPointMake(102.0f, 800.0f);
        }
        if (direction1 == 13) {
            position = CGPointMake(216.0f, 800.0f);
        }

        slider1.center = position;
        [UIView commitAnimations];
        
    }
    if (type1 == 1 && slider1.value > 98){
        if (canSound == 0) {
           
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction1 == 1) {
            position = CGPointMake(160.0f, 700.0f);
        }
        slider1.center = position;
        [UIView commitAnimations];

    }
    if (onScreen == 0 && direction == 13) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stoplevelfivetimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high5"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current5"];
        
        if (sup ==0) {
            [appDelegate savehigh5];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh5];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }  
        levelfiveEnd *Sword = [[levelfiveEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
        
    }

    if (onScreen == 0) {
        [self sliders];
    }
}

-(IBAction)startOver:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stoplevelfivetimer];
    [appDelegate stopMusic];
    [appDelegate qMusic];
    levelfive *Sword = [[levelfive alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    if (canSound == 0 ) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qPlayingMusic];    
        
    }
    
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/popSound.wav", [[NSBundle mainBundle] resourcePath]]]; /// SlideMastersThemeV1.mp3
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = 0;
	
	if (audioPlayer == nil)
		NSLog(@"not working");				
	else 
        audioPlayer.currentTime = 0; 
    
    backgroundOriginal.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    int choice =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    if (choice == 0) {
        backgroundOriginal.hidden = FALSE;
    }
    if (choice == 1) {
        backgroundOne.hidden = FALSE;
    }
    if (choice == 2) {
        backgroundTwo.hidden = FALSE;
    }
    if (choice == 3) {
        backgroundThree.hidden = FALSE;
    }
    if (choice == 4) {
        backgroundFour.hidden = FALSE;
    }
    if (choice == 5) {
        backgroundFive.hidden = FALSE;
    }
    if (choice == 6) {
        backgroundSix.hidden = FALSE;
    }
    if (choice == 7) {
        backgroundSeven.hidden = FALSE;
    }
    if (choice == 8) {
        backgroundEight.hidden = FALSE;
    }
    if (choice == 9) {
        backgroundNine.hidden = FALSE;
    }
    if (choice == 10) {
        backgroundTen.hidden = FALSE;
    }

    [self sliders];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
