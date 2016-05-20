//
//  leveleighta.m
//  Slide Masters
//
//  Created by Blake Campbell on 5/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "leveleighta.h"
#import "leveleightEnd.h"
#import "leveleight.h"

@implementation leveleighta
@synthesize slider;
@synthesize slider1;
@synthesize slider2, slider3;

-(void)sliders{
    number++;
    type = 0;
    type1 = 0;
    type2 = 0;
    type3 = 0;
    direction = number;
    direction1 = number;
    direction2 = number;
    direction3 = number;
    onScreen = 1;
    if (number == 1) {
        onScreen = 3;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 210, 430, 59);
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
        
        CGRect frame1 = CGRectMake(-120, 210, 430, 59);
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
        
        CGRect frame2 = CGRectMake(10, 210, 430, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
            
            
            
        }
        if (sliderselected == 1) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"AlienB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"AlienA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"IceB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"IceA1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"FiresliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"DragonB2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"DragonA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"UnicornB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"UnicornA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BritishB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BritishA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RivetsB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RivetsA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"RocketsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"NinjaB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"NinjaA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 99.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
    }
    if (number == 2) {
        onScreen = 3;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
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
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(-120, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(10, 210, 430, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type2 = 1;
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 1.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
    }
    if (number == 3) {
        onScreen = 2;
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
        
        CGRect frame1 = CGRectMake(65, 210, 430, 59);
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
        slider1.value = 99;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 4) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(160, 380, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
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
        slider.value = 95;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 380, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 5.0;
        
        
        
        [self.view addSubview:slider1];
    }
    if (number == 5) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(56, 93, 210, 59);
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
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 6) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-20, 80, 210, 59);
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
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(130, 80, 210, 59);
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
        slider1.value = 98;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 238.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 7) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(132, 270, 294, 59);
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
        
        CGRect frame1 = CGRectMake(-106, 270, 294, 59);
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
        slider1.value = 99;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 8) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-20, 330, 210, 59);
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
            [slider setThumbImage: [UIImage imageNamed:@"AliensliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"BunnyA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"BunnyB2.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(130, 330, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 238.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 9) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(30, 110, 260, 59);
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
        
        CGRect frame1 = CGRectMake(70, 330, 180, 59);
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
        slider1.value = 99;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 10) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(160, 30, 145, 59);
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
        slider.value = 2.0;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(160, 390, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2.0;
        
        
        [self.view addSubview:slider1];
    }
    if (number == 11) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(90, 101, 240, 59);
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
            [slider setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                     forState:UIControlStateNormal];
            [slider setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        type = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(90, 321, 240, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 238.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 12) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(0, 101, 240, 59);
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
        slider.value = 2;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 321, 240, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 13) {
        onScreen = 2;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-110, 160, 320, 59);
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
        slider.value = 98.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 370, 100, 59);
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
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
    }
    if (number == 14) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(15, 390, 145, 59);
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
        slider.value = 2.0;
        
        
        
        [self.view addSubview:slider];    }
    if (number == 15) {
        onScreen = 4;
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(56, 307, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
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
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(-120, 200, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type1 = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(10, 200, 430, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 1) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 3) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 4) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 5) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 6) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 7) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 8) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 9) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 10) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 11) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
            
            
        }
        
        if (sliderselected == 12) {
            [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                      forState:UIControlStateNormal];
            [slider2 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
            
        }
        type2 = 1;
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 1.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
        CGRect frame3 = CGRectMake(56, 93, 210, 59);
        slider3 = [[UISlider alloc] initWithFrame:frame3];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider3 addTarget:self action:@selector(check3) forControlEvents:UIControlEventValueChanged];
        slider3.backgroundColor = [UIColor clearColor];
        [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
        [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
        [slider3 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        if (sliderselected == 0) {
           [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
            
        }
        
        if (sliderselected == 1) {
           [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"AlienA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"AlienB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"AliensliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 2) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"BunnyB1.png"]
                                         forState:UIControlStateNormal];
           [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"BunnyA2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"BunnysliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 3) {
           [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"GoldBarA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"GoldBarB1.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"GoldBarsliderB.png"] forState:UIControlStateNormal];
            
        }
        
        if (sliderselected == 4) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"IceA2.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"IceB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"IcesliderB.png"] forState:UIControlStateNormal];
            
                    }
        if (sliderselected == 5) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"FiresliderA.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 6) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"GhostieA2.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"GhostieB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"GhostsliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 7) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"DragonA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"DragonB1.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"DragonsliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 8) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"UnicornA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"UnicornB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"UnicornsliderB.png"] forState:UIControlStateNormal];
            
        }
        if (sliderselected == 9) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"BritishA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"BritishB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"BritishsliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 10) {
           [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"RivetsA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"RivetsB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"MetalsliderB.png"] forState:UIControlStateNormal];
           
        }
        if (sliderselected == 11) {
            [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"RocketA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"RocketB1.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"RocketsliderB.png"] forState:UIControlStateNormal];
           
        }
        
        if (sliderselected == 12) {
           [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"NinjaA1.png"]
                                         forState:UIControlStateNormal];
            [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"NinjaB2.png"]
                                          forState:UIControlStateNormal];
            [slider3 setThumbImage: [UIImage imageNamed:@"NinjasliderB.png"] forState:UIControlStateNormal];
            
        }
        type3 = 1;
        
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 100;
        slider3.continuous = NO;
        slider3.value = 1.0;
        slider3.transform = CGAffineTransformRotate(slider3.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider3];
        
    }
}

-(void)check{                                           // 1
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
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction == 2) {
            position = CGPointMake(160.0f, -222.0f);
        }
        if (direction == 3) {
            position = CGPointMake(34.0f, 800.0f);
        }
        if (direction == 4) {
            position = CGPointMake(-338.0f, 412.0f);
        }
        if (direction == 7) {
            position = CGPointMake(278.0f, 800.0f);
        }
        if (direction == 8) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (direction == 13) {
            position = CGPointMake(34.0f, 800.0f);
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
            position = CGPointMake(160.0f, -222.0f);
        }
        if (direction == 5) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 6) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction == 9) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 10) {
            position = CGPointMake(658.0f, 64.0f);
        }
        if (direction == 11) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction == 12) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        if (direction == 14) {
            position = CGPointMake(658.0f, 434.0f);
        }
        if (direction == 15) {
            position = CGPointMake(160.0f, -220.0f);
        }
        slider.center = position;
        [UIView commitAnimations];
    }
    if (direction == 15 && onScreen == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopleveleighttimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high8"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current8"];
        
        if (sup ==0) {
            [appDelegate savehigh8];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh8];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        
        leveleightEnd *Sword = [[leveleightEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
    if (onScreen == 0) {
        [self sliders];
    }
} 
-(void)check1{                                         // 2
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
            position = CGPointMake(96.0f, 800.0f);
        }
        if (direction1 == 3) {
            position = CGPointMake(278.0f, 800.0f);
        }
        if (direction1 == 6) {
            position = CGPointMake(450.0f, 690.0f);
        }
        if (direction1 == 7) {
            position = CGPointMake(34.0f, 800.0f);
        }
        if (direction1 == 9) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction1 == 13) {
            position = CGPointMake(34.0f, 800.0f);
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
        if (direction1 == 2) {
            position = CGPointMake(96.0f, -220.0f);
        }
        if (direction1 == 4) {
            position = CGPointMake(658.0f, 412.0f);
        }
        if (direction1 == 5) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction1 == 8) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        if (direction1 == 10) {
            position = CGPointMake(658.0f, 420.0f);
        }
        if (direction1 == 11) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        if (direction1 == 12) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction1 == 15) {
            position = CGPointMake(93.0f, -220.0f);
        }
        slider1.center = position;
        [UIView commitAnimations];    
            
    }
    if (direction1 == 15 && onScreen == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopleveleighttimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high8"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current8"];
        
        if (sup ==0) {
            [appDelegate savehigh8];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh8];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        
        leveleightEnd *Sword = [[leveleightEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }

    if (onScreen == 0) {
        [self sliders];
    }
  
}
-(void)check2{                                           // 3
    if (type2 == 0 && slider2.value < 4) {
        if (canSound == 0) {
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction2 == 1) {
            position = CGPointMake(222.0f, 800.0f);
        }
        slider2.center = position;
        [UIView commitAnimations];
        
    }
    if (type2 == 1 && slider2.value > 98) {
        if (canSound == 0) {
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction2 == 2) {
            position = CGPointMake(222.0f, -220.0f);
        }
        if (direction2 == 15) {
            position = CGPointMake(227.0f, -220.0f);
        }
        slider2.center = position;
        [UIView commitAnimations];
        
    }
    if (direction2 == 15 && onScreen == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopleveleighttimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high8"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current8"];
        
        if (sup ==0) {
            [appDelegate savehigh8];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh8];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        
        leveleightEnd *Sword = [[leveleightEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }

    if (onScreen == 0) {
        [self sliders];
    }
}
-(void)check3{                                           // 4
    if (type3 == 0 && slider3.value < 4) {
        if (canSound == 0) {
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction3 == 1) {
            position = CGPointMake(160.0f, 800.0f);
        }
        slider3.center = position;
        [UIView commitAnimations];
        
    }
    if (type3 == 1 && slider3.value > 98) {
        if (canSound == 0) {
           
            [audioPlayer play];
        }
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction3 == 15) {
            position = CGPointMake(160.0f, -220.0f);
        }
        slider3.center = position;
        [UIView commitAnimations];
        
    }
    if (direction == 15 && onScreen == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopleveleighttimer];
        
        sup =[[NSUserDefaults standardUserDefaults] floatForKey:@"high8"];
        current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current8"];
        
        if (sup ==0) {
            [appDelegate savehigh8];
            int gotBetterTime = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        if (sup > 0) {
            if (current <= sup) {
                [appDelegate savehigh8];
                int gotBetterTime = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:gotBetterTime forKey:@"gotBetterTime"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        
        leveleightEnd *Sword = [[leveleightEnd alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }

    if (onScreen == 0) {
        [self sliders];
    }
}

-(IBAction)startOver:(id)sender {
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopleveleighttimer];
    [appDelegate stopMusic];
    [appDelegate qMusic];
    leveleight *Sword = [[leveleight alloc] initWithNibName:nil bundle:nil];
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

    // Do any additional setup after loading the view from its nib.
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
