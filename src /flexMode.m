//
//  flexMode.m
//  Slide Masters
//
//  Created by Blake Campbell on 2/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexMode.h"
#import "slidemastersViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "flexModeCountdown.h"
#import "flexModeMenu.h"
#import "flexModePrize.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation flexMode
@synthesize slider, aniSlider, slider1, aniSlider2, freezePowerUp,tenPowerUp, mysteryPowerUp, doublePowerUp,scoreBack, freezeIce, freezeBeam, freezePrompt, badSlideImage, tenPrompt,secondWindBanner1, doublePrompt, secondWindBanner2,crazyCombo,comboKing,ultraCombo,unstoppableCombo, mysteryPrompt, timeBox,scoreLabel,topazLabel,lastBarText,topaz,bar1,bar2,bar3, goToMenu, next, replay, gamePaused, continePlay, replayPaused,menu;

-(void)Singles{
   
    type = 0; // reset
    int randomNumber = arc4random() % 8 + 1;
    
    if (randomNumber == 1) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        
        type = 1;
        direction = 0;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 2) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        direction = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 3) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(15, 210, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        direction = 3;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2;
        
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 4) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(15, 210, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        type = 1;
        direction = 4;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98;
        
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
    }
    if (randomNumber == 5) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        type = 1;
        direction = 5;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 6) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 200, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        direction = 6;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 7) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 200, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        direction = 7;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
    if (randomNumber == 8) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(-55, 200, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkSingle) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        type = 1;
        direction = 8;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        [self.view addSubview:slider];
        [self.view addSubview:aniSlider];
        
    }
   
    [self.view addSubview:freezePowerUp];
    [self.view addSubview:doublePowerUp];
    [self.view addSubview:tenPowerUp];
    [self.view addSubview:mysteryPowerUp];
}

-(void)checkSingle{ // if the value
   
       if (type == 1 && slider.value < 4) {
           if (canSound == 0) {
               [audioPlayer play];
           }
           // Combo
           combo++;
           hasCombo = 1;
           comboTime = 0;
           combos.text = [NSString stringWithFormat:@"%i",combo];
           //
           if (hasDoubles == 1) {
               score++;
           }
           score++;
           [self addScore];
           called.text = [NSString stringWithFormat:@"%i",score];
           pattern++;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);// if direction is zero
           if (direction == 4) {
                position = CGPointMake(-220.0f, 240.0f);
           }
           if (direction == 5) {
               position = CGPointMake(450.0f, -220.0f);
           }
           if (direction == 8) {
               position = CGPointMake(450.0f, 690.0f);
           }
        aniSlider = slider;
        aniSlider.center = position;
        [UIView commitAnimations];
           if (pattern <= 5 && playerTime >= .3) {
               [self Singles];
           }
          if (pattern >5 && playerTime >= .3){
               [self Doubles];
           }

       }
       if (type == 0 && slider.value > 96) {
           if (canSound == 0) {
              [audioPlayer play];
           }
           // Combo
           combo++;
           hasCombo = 1;
           comboTime = 0;
           combos.text = [NSString stringWithFormat:@"%i",combo];
           //
           score++;
           if (hasDoubles == 1) {
               score++;
           }
           [self addScore];
           called.text = [NSString stringWithFormat:@"%i",score];
         pattern++;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285]; // .285
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
         aniSlider = slider;
        if (direction == 1) {
             position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 3) {
            position = CGPointMake(700.0f, 240.0f);
        }
        if (direction == 6) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction == 7) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        aniSlider.center = position;
        [UIView commitAnimations];
           if (pattern <= 5 && playerTime >= .3) {
               [self Singles];
           }
           if(pattern > 5 && playerTime >= .3){
               [self Doubles];
           }

    }

}

-(void)Doubles{
    dType2 = 0;
    dType = 0;
    oneSlide = 0;
    slidersOnScreen = 2;
    // Type is 1 when slide.value is high
    // 0 when slide.value is low
    int doubleRandom = arc4random() % 8 + 1;
    int isFake = arc4random() % 2 + 1; // 1 or 2 (2 is fake)
    int whichFake = 0;
    if (isFake == 2) {
        whichFake = arc4random() % 2 + 1;// 1 or 2 
        slidersOnScreen = 1;
    }
    slider1 = NULL;
    slider = NULL;
    aniSlider2= NULL;
    aniSlider = NULL;
    
    if (doubleRandom == 1) {
        
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(160, 210, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        directionOne = 1;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 1;
        aniSlider.value = slider.value;
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 210, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
            
        }
        dType2 = 1;
        directionTwo = 1;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 99.0;
        aniSlider2.value = slider1.value;
        
        
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
    }
    if (doubleRandom == 2) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(160, 210, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        dType = 1;
        directionOne = 2;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 98;
        aniSlider.value = slider.value;
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 210, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        
        directionTwo = 2;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 1.0;
        aniSlider2.value = slider1.value;
        
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
        
    }
    if (doubleRandom == 3) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(112, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        
        dType = 1;
        directionOne = 3;
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 98;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        aniSlider.value = slider.value;
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        
        directionTwo = 3;
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 1.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        aniSlider2.value = slider1.value;
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
        
    }
    if (doubleRandom == 4) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(112, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        directionOne = 4;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        
        slider.value = 2;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        aniSlider.value = slider.value;
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
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
            [slider1 setThumbImage: [UIImage imageNamed:@"AliensliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (sliderselected == 2) {
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"BunnyA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"BunnyB2.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"BunnysliderA.png"] forState:UIControlStateNormal];
            
            
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [slider1 setThumbImage: [UIImage imageNamed:@"DragonsliderA.png"] forState:UIControlStateNormal];
            
            
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
            [slider1 setThumbImage: [UIImage imageNamed:@"NinjasliderA.png"] forState:UIControlStateNormal];
            
            
        }
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        dType2 = 1;
        directionTwo = 4;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        
        slider1.value = 98.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        aniSlider2.value = slider1.value;
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
        
        
    }
    if (doubleRandom == 5) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(0, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        directionOne = 5;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        
        slider.value = 1;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        aniSlider.value = slider.value;
        [self.view addSubview:slider];
        
        
        
        CGRect frame1 = CGRectMake(112, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        
        dType2 = 1;
        directionTwo = 5;
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 99;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 238.00/180*M_PI);
        aniSlider2.value = slider1.value;
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
        
    }
    if (doubleRandom == 6) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        CGRect frame = CGRectMake(0, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        dType = 1;
        directionOne = 6;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        aniSlider.value = slider.value;
        [self.view addSubview:slider];
        
        
        CGRect frame1 = CGRectMake(112, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        directionTwo = 6;
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 1;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 238.00/180*M_PI);
        aniSlider2.value = slider1.value;
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
        
    }
    if (doubleRandom == 7) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(56, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        directionOne = 7;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 2.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        aniSlider.value = slider.value;
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        dType2 = 1;
        directionTwo = 7;
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        aniSlider2.value = slider1.value;
        
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
    }
    if (doubleRandom == 8) {
        int sliderselected =[[NSUserDefaults standardUserDefaults] floatForKey:@"SliderSelected"];
        
        CGRect frame = CGRectMake(56, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(checkDoubles) forControlEvents:UIControlEventValueChanged];
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
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
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
        if (isFake == 2 && whichFake == 1) {
            [slider addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                     forState:UIControlStateNormal];
            [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                     forState:UIControlStateNormal];
            
            
            
        }
        dType = 1;
        directionOne = 8;
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        if (isFake == 2 && whichFake == 1) {
            slider.continuous = YES;
        }
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        aniSlider.value = slider.value;
        [self.view addSubview:slider];
        
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        [slider1 addTarget:self action:@selector(checkDoublesTwo) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
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
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
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
        if (isFake == 2 && whichFake == 2) {
            [slider1 addTarget:self action:@selector(badSlide) forControlEvents:UIControlEventValueChanged];
            [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                      forState:UIControlStateNormal];
            [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireB1.png"]
                                      forState:UIControlStateNormal];
            
            
            
        }
        directionTwo = 8;
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        if (isFake == 2 && whichFake == 2) {
            slider1.continuous = YES;
        }
        slider1.value = 1;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        aniSlider2.value = slider1.value;
        
        [self.view addSubview:slider1];
        if (isFake == 2) {
            oneSlide = 1;
        }
    }
    
    [self.view addSubview:freezePowerUp];
    [self.view addSubview:doublePowerUp];
    [self.view addSubview:tenPowerUp];
    [self.view addSubview:mysteryPowerUp];
}

-(void)checkDoubles{
    if (dType == 0 && slider.value > 97) {
        if (canSound == 0) {
            
            [audioPlayer play];
        }
        [self addScore];
        if (hasDoubles == 1) {
            score++;
        }
        // Combo
        combo++;
        hasCombo = 1;
        comboTime = 0;
        combos.text = [NSString stringWithFormat:@"%i",combo];
        //
        slidersOnScreen --;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);// if direction is zero
        if (directionOne == 1) {
            position = CGPointMake(450.0f, 240.0f);
        }
        if (directionOne == 4) {
            position = CGPointMake(-350.0f, 1040.0f);
            [UIView setAnimationDuration:.333];
        }
        if (directionOne == 5) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        if (directionOne == 7) {
            position = CGPointMake(160.0f, -220.0f);
        }
        score++;
        called.text = [NSString stringWithFormat:@"%i",score];

        aniSlider = slider;
        aniSlider.center = position;
        [UIView commitAnimations];
        
        if (oneSlide == 1 && playerTime >= .3) {
            [slider1 removeFromSuperview];
            [self Doubles];
            }
        if (slidersOnScreen == 0 && playerTime >= .3) {
            [self Doubles];
        }
              
    }
    if (dType == 1 && slider.value < 4) {
        if (canSound == 0) {
            [audioPlayer play];
        }
        [self addScore];
        if (hasDoubles == 1) {
            score++;
        }
        // Combo
        combo++;
        hasCombo = 1;
        comboTime = 0;
        combos.text = [NSString stringWithFormat:@"%i",combo];
        //
        slidersOnScreen --;        
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);// if direction is zero
        if (directionOne == 1) {
            position = CGPointMake(450.0f, 240.0f);
        }
        if (directionOne == 2) {
            position = CGPointMake(-220.0f, 240.0f);
        }
        if (directionOne == 3) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (directionOne == 6) {
            position = CGPointMake(450.0f, 690.0f);
        }
        if (directionOne == 8) {
            position = CGPointMake(160.0f, 700.0f);
        }
        score++;
        called.text = [NSString stringWithFormat:@"%i",score];
        
        aniSlider = slider;
        aniSlider.center = position;
        [UIView commitAnimations];
        
        if (oneSlide == 1 && playerTime >= .3) {
            [slider1 removeFromSuperview];
            [self Doubles];
        }
        if (slidersOnScreen == 0 && playerTime >= .3) {
            [self Doubles];
        }
    }
}
        
-(void)checkDoublesTwo{
    if (dType2 == 1 && slider1.value < 4) {
        if (canSound == 0) {
            [audioPlayer play];
        }
        [self addScore];
        if (hasDoubles == 1) {
            score++;
        }
        // Combo
        combo++;
        hasCombo = 1;
        comboTime = 0;
        combos.text = [NSString stringWithFormat:@"%i",combo];
        //
    slidersOnScreen --;
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:.285];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    CGPoint position = CGPointMake(160.0f, 700.0f);// if direction is zero
        if (directionTwo == 1 ) {
        position = CGPointMake(-220.0f, 240.0f);
        }
        if (directionTwo == 4) {
            position = CGPointMake(450.0f, -220.0f);
             [UIView setAnimationDuration:.333];
        }
        if (directionTwo == 5) {
            position = CGPointMake(450.0f, 690.0f);
        }
        if (directionTwo == 7) {
            position = CGPointMake(160.0f, 700.0f);
        }
        aniSlider2 = slider1;
        aniSlider2.center = position;
        [UIView commitAnimations]; 
        score++;
        called.text = [NSString stringWithFormat:@"%i",score];

        
        if (oneSlide == 1 && playerTime >= .3) {
            [slider removeFromSuperview];
            [self Doubles];
        }
        if (slidersOnScreen == 0 && playerTime >= .3) {
            [self Doubles];
        }
    }
    if (dType2 == 0 && slider1.value > 98) {
        if (canSound == 0) {
         
            [audioPlayer play];
        }
        if (hasDoubles == 1) {
            score++;
        }
        [self addScore];
        // Combo
        combo++;
        hasCombo = 1;
        comboTime = 0;
        combos.text = [NSString stringWithFormat:@"%i",combo];
        //
        slidersOnScreen --;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);// if direction is zero
        if (directionTwo == 1 ) {
            position = CGPointMake(-220.0f, 240.0f);
        }
        if (directionTwo == 2) {
             position = CGPointMake(450.0f, 240.0f);
        }
        if (directionTwo == 3) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (directionTwo == 6) {
            position = CGPointMake(-350.0f, -580.0f);
        }
        if (directionTwo == 8) {
            position = CGPointMake(160.0f, -220.0f);
        }
        aniSlider2 = slider1;
        aniSlider2.center = position;
        [UIView commitAnimations]; 
        score++;
        called.text = [NSString stringWithFormat:@"%i",score];
        
        
        if (oneSlide == 1 && playerTime >= .3) {
            [slider removeFromSuperview];
            [self Doubles];
        }
        if (slidersOnScreen == 0 && playerTime >= .3) {
            [self Doubles];
        }

    }
}

-(void)badSlide{
    if (playerTime >= .3) {
    ouch++;
    hasCombo = 0;
    combo = 0;
    combos.text = [NSString stringWithFormat:@"%i",combo]; 
    if (directionOne == 1 && directionTwo == 1) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
       
        NSLog(@"Badslide");
         
    }
    if (directionOne == 2 && directionTwo == 2) {
        slidersOnScreen = 2;
        oneSlide = 0;
       
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
        
        NSLog(@"Badslide2");
        
    }
    if (directionOne == 3 && directionTwo == 3) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
        
        NSLog(@"Badslide2");

    }
    if (directionOne == 4 && directionTwo == 4) {
        slidersOnScreen = 2;
        oneSlide = 0;
       
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
        
        NSLog(@"Badslide2");
    }
    if (directionOne == 5 && directionTwo == 5) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
        
        NSLog(@"Badslide2");

    }
    if (directionOne == 6 && directionTwo == 6) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
       
        NSLog(@"Badslide2");
    }
    if (directionOne == 7 && directionTwo == 7) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
       
        NSLog(@"Badslide2"); 
    }
    if (directionOne == 8 && directionTwo == 8) {
        slidersOnScreen = 2;
        oneSlide = 0;
        
        timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [aniSlider removeFromSuperview];
        [aniSlider2 removeFromSuperview];
        
        NSLog(@"Badslide2"); 
    }
    if (ouch == 1) {
        if (playerTime <= 5) {
            playerTime = .3;
        }
        if (playerTime > 5) {
            playerTime = playerTime - 5;
        }
    }
    CGPoint positionBad = CGPointMake(160.0f, 240.0f);
    badSlideImage.center = positionBad;
    badSlideVar = 1;
    }

}

-(IBAction)back:(id)sender{
    pause++;
    if (pause == 1) {
        [timer invalidate];
    }
    if (pause == 2) {
        timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timeTicking) userInfo:nil repeats:YES];
        pause = 0;
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
   
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.view];
    
    //CGRect bugRect = [self.powerUP frame];
    CGRect freeze = [[[self.freezePowerUp layer] presentationLayer] frame];
    CGRect ten = [[[self.tenPowerUp layer] presentationLayer] frame];
    CGRect doubles = [[[self.doublePowerUp layer] presentationLayer] frame];
    CGRect mystery = [[[self.mysteryPowerUp layer] presentationLayer] frame];
    if (CGRectContainsPoint(freeze, touchLocation) && canPowerUp == 1) {
        NSLog(@"freeze");
        freezePowerUp.hidden = TRUE;
        [self freezeTime];
        canPowerUp = 0;
    }
    if (CGRectContainsPoint(ten, touchLocation)&& canPowerUp == 1) {
        NSLog(@"ten!");
        tenPowerUp.hidden = TRUE;
        [self addTen];
        canPowerUp = 0;
    }
    if (CGRectContainsPoint(doubles, touchLocation)&& canPowerUp == 1) {
        NSLog(@"doubles");
        doublePowerUp.hidden = TRUE;
        [self scoreMulti];
        canPowerUp = 0;
    }
    if (CGRectContainsPoint(mystery, touchLocation)&& canPowerUp == 1) {
        NSLog(@"Mystery");
        mysteryPowerUp.hidden = TRUE;
        [self mysterySphere];
        canPowerUp = 0;
    }
}

// Power Up Actions
-(void)freezeTime{
    if (screenSize == 1) {
        CGPoint position2 = CGPointMake(248.0f, 700.0f);
        freezeBeam.center = position2;
    }
    else{
        CGPoint position2 = CGPointMake(248.0f, 700.0f);
        freezeBeam.center = position2;
    }
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:.2];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    CGPoint position = CGPointMake(248.0f, -72.0f);
    freezeBeam.center = position;
    [UIView commitAnimations];
    freezeVar = 1;
    melting = 60;
}
-(void)addTen{
    score = score + 10;
    called.text = [NSString stringWithFormat:@"%i",score];
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:.2];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    if (screenSize == 1) {
        CGPoint position2 = CGPointMake(160.0f, 552.0f);
        tenPrompt.center = position2;
    }
    else{
        CGPoint position2 = CGPointMake(160.0f, 464.0f);
        tenPrompt.center = position2;
    }
    [UIView commitAnimations];
    tenDelay = 30;
    tenOnScreen = 1;
}
-(void)scoreMulti{
    hasDoubles = 1;
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:.2];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    if (screenSize == 1) {
        CGPoint position2 = CGPointMake(160.0f, 552.0f);
        doublePrompt.center = position2;
    }
    else{
        CGPoint position2 = CGPointMake(160.0f, 464.0f);
        doublePrompt.center = position2;
    }
    [UIView commitAnimations];
    doubleDelay = 55;
    doubleOnScreen = 1;
}
-(void)mysterySphere{
    hasSphere = 1;
    if (screenSize == 1) {
        CGPoint position = CGPointMake(160.0f, 592.0f);
        mysteryPrompt.center = position;
    }
    else{
        CGPoint position = CGPointMake(160.0f, 498.0f);
        mysteryPrompt.center = position;
    }
    [UIView beginAnimations:nil context:NULL];     
    [UIView setAnimationDuration:.2];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationRepeatAutoreverses:NO];
    if (screenSize == 1) {
        CGPoint position2 = CGPointMake(160.0f, 552.0f);
        mysteryPrompt.center = position2;
    }
    else{
        CGPoint position2 = CGPointMake(160.0f, 464.0f);
        mysteryPrompt.center = position2;
    }
    [UIView commitAnimations];
    myOnScreen = 22;
}
//

-(void)addScore{
    scoreAni = 1;
}

-(void)timeTicking{
    if (myOnScreen >= 1) {
        myOnScreen--;
        if (myOnScreen <=0) {
            if (screenSize == 1) {
                CGPoint position = CGPointMake(160.0f, 592.0f);
                mysteryPrompt.center = position;
            }
            else{
                CGPoint position = CGPointMake(160.0f, 498.0f);
                mysteryPrompt.center = position;
            }
          }
    }
    if (combo > highestCombo){
        highestCombo = combo;
    }
    if (scoreAni == 1) {
        timeLag++;
    }
    if (freezeVar == 1) {
        freezeLag++;
    }
    if (freezeLag == 2) {
        CGPoint position = CGPointMake(233.0f, 24.0f);
        freezeIce.center = position;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.8];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        if (screenSize == 1) {
            CGPoint position2 = CGPointMake(160.0f, 552.0f);
            freezePrompt.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(160.0f, 464.0f);
            freezePrompt.center = position2;
        }
        [UIView commitAnimations];
        timeIsFrozen = 1;
        freezeVar = 0;
        freezeLag = 0;
    }
    if (badSlideVar == 1){
        badSlideTime++;
        if (badSlideTime == 20){
            [slider removeFromSuperview];
            [slider1 removeFromSuperview];
            [aniSlider removeFromSuperview];
            [aniSlider2 removeFromSuperview];

            [self Doubles];
            badSlideVar = 0;
            badSlideTime = 0;
            CGPoint positionBad = CGPointMake(-110.0f, 240.0f);
            badSlideImage.center = positionBad;
        }
    }
    if (tenOnScreen == 1) {
        tenDelay--;
        if (tenDelay <= 0) {
            tenOnScreen = 0;
            if (screenSize == 1) {
                CGPoint position = CGPointMake(160.0f, 592.0f);
                tenPrompt.center = position;
            }
            else{
                CGPoint position = CGPointMake(160.0f, 498.0f);
                tenPrompt.center = position;
            }
          
        }
    }
    if (doubleOnScreen == 1){
        doubleDelay--;
        if (doubleDelay <= 0) {
            doubleOnScreen = 0;
            hasDoubles = 0;
            if (screenSize == 1) {
                CGPoint position = CGPointMake(160.0f, 592.0f);
                doublePrompt.center = position;
            }
            else{
                CGPoint position = CGPointMake(160.0f, 498.0f);
                doublePrompt.center = position;
            }
        }
    }
    a = a + 1;
    once = 0;
    if (a == 10){
        time++;
        a = 0;
        once = 1;
    }
    
    if (scoreAni == 1 && timeLag == 1) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.1];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        scoreBack.transform = CGAffineTransformMakeScale(1.3f, 1.3f);
        [UIView commitAnimations];
        
    }
    if (scoreAni == 1 && timeLag == 2) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.1];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        scoreBack.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        [UIView commitAnimations];
        scoreAni = 0;
        timeLag = 0;      
    }
    
    ouch = 0;
    playerTime = playerTime - .1;
    
    if (timeIsFrozen == 1) {
         playerTime = playerTime + .1;
        melting--;
        if (melting <= 0 ){
            timeIsFrozen = 0;
            CGPoint position1 = CGPointMake(233.0f, -34.0f);
            freezeIce.center = position1;
            if (screenSize == 1) {
                CGPoint position2 = CGPointMake(160.0f, 592.0f);
                freezePrompt.center = position2;
            }
            else{
                CGPoint position2 = CGPointMake(160.0f, 498.0f);
                freezePrompt.center = position2;
            }
        }
    }
    
    timeLabel.text = [NSString stringWithFormat:@"%.1f",playerTime];
    if (time == firstPTime && once == 1) {
        canPowerUp = 1;
       NSLog(@"First Power Up");
        ran = arc4random() % 3 + 1;
        freezePowerUp.hidden = FALSE;
        doublePowerUp.hidden = FALSE;
        tenPowerUp.hidden = FALSE;
        if (ran == 1) {
            anRan = arc4random() % 4 + 1; // freeze
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                freezePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                freezePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(288.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(288.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                freezePowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    freezePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    freezePowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                freezePowerUp.center = position;
                [UIView commitAnimations];
            }
        }
        if (ran == 2) {
            anRan = arc4random() % 4 + 1; // double
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                doublePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    doublePowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    doublePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                doublePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    doublePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    doublePowerUp.center = position1;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    doublePowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    doublePowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                doublePowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    doublePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    doublePowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                doublePowerUp.center = position;
                [UIView commitAnimations];
            }
        }
        if (ran == 3) {
            anRan = arc4random() % 4 + 1; // +10
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                tenPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    tenPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    tenPowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                tenPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    tenPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    tenPowerUp.center = position1;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    tenPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    tenPowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                tenPowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    tenPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    tenPowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                tenPowerUp.center = position;
                [UIView commitAnimations];
            }
        }
              
    }
    if (time == secondPTime && once == 1) {
        canPowerUp = 1;
        NSLog(@"secondPTime Power Up");
        ran = arc4random() % 3 + 1; // 5 + 1 ////////////////// Change this
        if (ran == 1) {
            anRan = arc4random() % 4 + 1;
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                mysteryPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    mysteryPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    mysteryPowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                mysteryPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    mysteryPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    mysteryPowerUp.center = position1;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    mysteryPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    mysteryPowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                mysteryPowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    mysteryPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    mysteryPowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                mysteryPowerUp.center = position;
                [UIView commitAnimations];
            }
            }
        else{
            ran = arc4random() % 3 + 1;
            freezePowerUp.hidden = FALSE;
            doublePowerUp.hidden = FALSE;
            tenPowerUp.hidden = FALSE;
            if (ran == 1) {
                anRan = arc4random() % 4 + 1; // freeze
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    freezePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    freezePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(288.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(288.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    freezePowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        freezePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        freezePowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    freezePowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
            if (ran == 2) {
                anRan = arc4random() % 4 + 1; // double
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    doublePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        doublePowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        doublePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    doublePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        doublePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        doublePowerUp.center = position1;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        doublePowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        doublePowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    doublePowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        doublePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        doublePowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    doublePowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
            if (ran == 3) {
                anRan = arc4random() % 4 + 1; // +10
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    tenPowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        tenPowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        tenPowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    tenPowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        tenPowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        tenPowerUp.center = position1;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        tenPowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        tenPowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    tenPowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        tenPowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        tenPowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];     
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    tenPowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
        }
    }
    if (time == thirdPTime && once == 1) {
        canPowerUp = 1;
        NSLog(@"thirdPTime Power Up");
        ran = arc4random() % 3 + 1;
        freezePowerUp.hidden = FALSE;
        doublePowerUp.hidden = FALSE;
        tenPowerUp.hidden = FALSE;

        if (ran == 1) {
            anRan = arc4random() % 4 + 1; // freeze
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                freezePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                freezePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(288.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(288.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    freezePowerUp.center = position;
                }
                else{
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    freezePowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                freezePowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    freezePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    freezePowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                freezePowerUp.center = position;
                [UIView commitAnimations];
            }
        }
        if (ran == 2) {
            anRan = arc4random() % 4 + 1; // double
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                doublePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    doublePowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    doublePowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                doublePowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    doublePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    doublePowerUp.center = position1;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    doublePowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    doublePowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                doublePowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    doublePowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    doublePowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                doublePowerUp.center = position;
                [UIView commitAnimations];
            }
        }
        if (ran == 3) {
            anRan = arc4random() % 4 + 1; // +10
            if (anRan == 1) {
                CGPoint position1 = CGPointMake(32.0f, -34.0f);
                tenPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    tenPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    tenPowerUp.center = position;
                }
                [UIView commitAnimations];
            }
            if (anRan == 2) {
                CGPoint position1 = CGPointMake(288.0f, -38.0f);
                tenPowerUp.center = position1;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    tenPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    tenPowerUp.center = position1;
                }
                [UIView commitAnimations];
            }
            if (anRan == 3) {
                if (screenSize == 1) {
                    CGPoint position = CGPointMake(32.0f, 606.0f);
                    tenPowerUp.center = position;
                }
                else {
                    CGPoint position = CGPointMake(32.0f, 514.0f);
                    tenPowerUp.center = position;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(32.0f, -34.0f);
                tenPowerUp.center = position;
                [UIView commitAnimations];
            }
            if (anRan == 4) {
                if (screenSize == 1) {
                    CGPoint position1 = CGPointMake(288.0f, 606.0f);
                    tenPowerUp.center = position1;
                }
                else {
                    CGPoint position1 = CGPointMake(288.0f, 514.0f);
                    tenPowerUp.center = position1;
                }
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:pTimeOnScreen];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(288.0f, -38.0f);
                tenPowerUp.center = position;
                [UIView commitAnimations];
            }
        }
    }
    if (time == fourthPTime && nums > 1) {
        canPowerUp = 1;
        if (once == 1) {
             NSLog(@"fourthPTime Power Up");
            ran = arc4random() % 3 + 1;
            freezePowerUp.hidden = FALSE;
            doublePowerUp.hidden = FALSE;
            tenPowerUp.hidden = FALSE;

            if (ran == 1) {
                anRan = arc4random() % 4 + 1; // freeze
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    freezePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    freezePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(288.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(288.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        freezePowerUp.center = position;
                    }
                    else{
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        freezePowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    freezePowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        freezePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        freezePowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    freezePowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
            if (ran == 2) {
                anRan = arc4random() % 4 + 1; // double
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    doublePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        doublePowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        doublePowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    doublePowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        doublePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        doublePowerUp.center = position1;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        doublePowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        doublePowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    doublePowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        doublePowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        doublePowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    doublePowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
            if (ran == 3) {
                anRan = arc4random() % 4 + 1; // +10
                if (anRan == 1) {
                    CGPoint position1 = CGPointMake(32.0f, -34.0f);
                    tenPowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        tenPowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        tenPowerUp.center = position;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 2) {
                    CGPoint position1 = CGPointMake(288.0f, -38.0f);
                    tenPowerUp.center = position1;
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        tenPowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        tenPowerUp.center = position1;
                    }
                    [UIView commitAnimations];
                }
                if (anRan == 3) {
                    if (screenSize == 1) {
                        CGPoint position = CGPointMake(32.0f, 606.0f);
                        tenPowerUp.center = position;
                    }
                    else {
                        CGPoint position = CGPointMake(32.0f, 514.0f);
                        tenPowerUp.center = position;
                    }
                    [UIView beginAnimations:nil context:NULL];
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(32.0f, -34.0f);
                    tenPowerUp.center = position;
                    [UIView commitAnimations];
                }
                if (anRan == 4) {
                    if (screenSize == 1) {
                        CGPoint position1 = CGPointMake(288.0f, 606.0f);
                        tenPowerUp.center = position1;
                    }
                    else {
                        CGPoint position1 = CGPointMake(288.0f, 514.0f);
                        tenPowerUp.center = position1;
                    }
                    [UIView beginAnimations:nil context:NULL];     
                    [UIView setAnimationDuration:pTimeOnScreen];
                    [UIView setAnimationRepeatCount:1];
                    [UIView setAnimationRepeatAutoreverses:NO];
                    CGPoint position = CGPointMake(288.0f, -38.0f);
                    tenPowerUp.center = position;
                    [UIView commitAnimations];
                }
            }
        }
    }
    
    if (hasCombo == 1){
        comboTime++;
        if (comboTime == 10) {  // 1 second
            hasCombo = 0;
            combo = 0;
            combos.text = [NSString stringWithFormat:@"%i",combo]; 
        }
    }
    
    if (combo == 20 && canAnimate == 0) {
         canAnimate = 1;
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            crazyCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            crazyCombo.center = position;
        }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        if (screenSize == 1) {
            CGPoint position2 = CGPointMake(160.0f, 552.0f);
            crazyCombo.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(160.0f, 464.0f);
            crazyCombo.center = position2;
        }
        [UIView commitAnimations];
    }
    if (combo > 25) {
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            crazyCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            crazyCombo.center = position;
        }
        canAnimate = 0;
    }
    
    if (combo == 50 && canAnimate == 0) {
        canAnimate = 1;
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            ultraCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            ultraCombo.center = position;
        }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        if (screenSize == 1) {
            CGPoint position2 = CGPointMake(160.0f, 552.0f);
            ultraCombo.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(160.0f, 464.0f);
            ultraCombo.center = position2;
        }
        [UIView commitAnimations];
    }
    if (combo > 55) {
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            ultraCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            ultraCombo.center = position;
        }
        canAnimate = 0;
    }
    
    if (combo == 75 && canAnimate == 0) {
        canAnimate = 1;
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            unstoppableCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            unstoppableCombo.center = position;
        }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        if (screenSize == 1) {
            CGPoint position2 = CGPointMake(160.0f, 552.0f);
            unstoppableCombo.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(160.0f, 464.0f);
            unstoppableCombo.center = position2;
        }
        [UIView commitAnimations];
    }
    if (combo > 80) {
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            unstoppableCombo.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            unstoppableCombo.center = position;
        }
        canAnimate = 0;
    }
    
    if (combo == 100 && canAnimate == 0) {
        canAnimate = 1;
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            comboKing.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            comboKing.center = position;
        }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        if (screenSize == 1) {
            CGPoint position2 = CGPointMake(160.0f, 552.0f);
            comboKing.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(160.0f, 464.0f);
            comboKing.center = position2;
        }
        [UIView commitAnimations];
    }
    if (combo > 110) {
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            comboKing.center = position;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            comboKing.center = position;
        }
        canAnimate = 0;
    }
    
    if (combo < 3) {
        if (screenSize == 1) {
            CGPoint position = CGPointMake(160.0f, 592.0f);
            crazyCombo.center = position;
            CGPoint position1 = CGPointMake(160.0f, 592.0f);
            ultraCombo.center = position1;
            CGPoint position2 = CGPointMake(160.0f, 592.0f);
            unstoppableCombo.center = position2;
            CGPoint position3 = CGPointMake(160.0f, 592.0f);
            comboKing.center = position3;
        }
        else{
            CGPoint position = CGPointMake(160.0f, 498.0f);
            crazyCombo.center = position;
            CGPoint position1 = CGPointMake(160.0f, 498.0f);
            ultraCombo.center = position1;
            CGPoint position2 = CGPointMake(160.0f, 498.0f);
            unstoppableCombo.center = position2;
            CGPoint position3 = CGPointMake(160.0f, 498.0f);
            comboKing.center = position3;
        }
        canAnimate = 0;
    }
    if (playerTime <= 1) {
        pauseButton.hidden = TRUE;
    }
    if (playerTime <= 0) {
        playerTime = 0;
        timeLabel.text = [NSString stringWithFormat:@"%.1f",playerTime];
        [timer invalidate];
        scoreBack.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        [self hideThings];
        timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(delayAndEnd) userInfo:nil repeats:YES];

    }
    
}

-(void)delayAndEnd{
    delayTime++;
    [slider removeFromSuperview];
    [slider1 removeFromSuperview];
    [aniSlider removeFromSuperview];
    [aniSlider2 removeFromSuperview];
    
    if (delayTime == 2) {
            [slider removeFromSuperview];
            [slider1 removeFromSuperview];
            [aniSlider removeFromSuperview];
            [aniSlider2 removeFromSuperview];
        timeOver.hidden = FALSE;
        CGPoint position1 = CGPointMake(160.0f, 508.0f);
        timeOver.center = position1;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.7];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        timeOver.center = position;
        [UIView commitAnimations];
    }
    if (delayTime == 20) {
        int secondWind = arc4random() % 100 + 1;
        NSLog(@"%i",secondWind);
            if (secondWind <= 33 && hadSecond == 0) {
                hadSecondWind = 1;
                hasSecondWind = 1;
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:.3];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(80.0f, 226.0f);
                secondWindBanner1.center = position;
                [UIView commitAnimations];
                
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:.3];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                CGPoint position1 = CGPointMake(240.0f, 226.0f);
                secondWindBanner2.center = position1;
                [UIView commitAnimations];
                int totalWinds =[[NSUserDefaults standardUserDefaults] integerForKey:@"totalWinds"];
                totalWinds++;
                [[NSUserDefaults standardUserDefaults] setInteger:totalWinds forKey:@"totalWinds"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                addTimeForStats = 1;
                mysteryPrompt.hidden = TRUE;
                
        }
    }//do u get second wind?
    if (delayTime == 34 && hadSecondWind == 0) {
        [timer invalidate];
        goodToGo = 1;
        [self showStats];
    }
    if (delayTime == 65 && hasSecondWind == 1) {
         NSLog(@"got here");
        timeOver.hidden = TRUE;
        secondWindBanner1.hidden = TRUE;
        secondWindBanner2.hidden = TRUE;
        [timer invalidate];
        playerTime = 10;
        [self showThings];
        timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timeTicking) userInfo:nil repeats:YES];
        [self Singles];
        hasSecondWind = 0;
        hadSecond = 1;
    } // do second wind
    if (delayTime == 66 && hasSecondWind == 0 && hadSecondWind == 1) {
        [timer invalidate];
        NSLog(@"After second");
        timeOver.hidden = FALSE;
        CGPoint position1 = CGPointMake(160.0f, 508.0f);
        timeOver.center = position1;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.7];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 240.0f);
        timeOver.center = position;
        [UIView commitAnimations];
        [self showStats];
    }// after second wind
}

-(void)showStats{
    called.hidden = TRUE;
    combos.hidden = TRUE;
    scoreBack.hidden = TRUE;
    timeBox.hidden = TRUE;
    timeLabel.hidden = TRUE;    
    NSLog(@"showing stats");
    [timer invalidate]; 
    ////
    topazEarned = score + (arc4random() % 7 + 1) + 20;
    int userTopaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
    if (score <=10){
        topazEarned = 0;
    }
    userTopaz = userTopaz + topazEarned;
    [[NSUserDefaults standardUserDefaults] setInteger:userTopaz forKey:@"coins"];  
    [[NSUserDefaults standardUserDefaults] synchronize];

    
    scoreLabel.text = [NSString stringWithFormat:@"%i",score];
    lastBarText.text = [NSString stringWithFormat:@"%i",highestCombo];
    topazLabel.text = [NSString stringWithFormat:@"%i",topazEarned];
    
    int gamesPlayed =[[NSUserDefaults standardUserDefaults] integerForKey:@"gamesPlayed"];
    gamesPlayed++;
    [[NSUserDefaults standardUserDefaults] setInteger:gamesPlayed forKey:@"gamesPlayed"];  
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    currentExp = [[NSUserDefaults standardUserDefaults] integerForKey:@"currentExp"];
    maxExp = [[NSUserDefaults standardUserDefaults] integerForKey:@"maxExp"];
    flexLevel = [[NSUserDefaults standardUserDefaults] integerForKey:@"flexLevel"];
    
    if (addTimeForStats == 1) {
        int timeOn =[[NSUserDefaults standardUserDefaults] integerForKey:@"timePlayed"];
        timeOn += 70;
        [[NSUserDefaults standardUserDefaults] setInteger:timeOn forKey:@"timePlayed"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    if (addTimeForStats == 0) {
        int timeOn =[[NSUserDefaults standardUserDefaults] integerForKey:@"timePlayed"];
        timeOn += 60;
        [[NSUserDefaults standardUserDefaults] setInteger:timeOn forKey:@"timePlayed"];  
        [[NSUserDefaults standardUserDefaults] synchronize];

    }
    
    oldMax = maxExp;
    oldExp  = currentExp;
    oldFlexLevel = flexLevel;
    currentExp = currentExp + score;
    
    int highestS =[[NSUserDefaults standardUserDefaults] integerForKey:@"highestScore"];
    int highestC =[[NSUserDefaults standardUserDefaults] integerForKey:@"highestCombo"];
    if (score > highestS) {
        [[NSUserDefaults standardUserDefaults] setInteger:score forKey:@"highestScore"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    if (highestCombo > highestC) {
        [[NSUserDefaults standardUserDefaults] setInteger:highestCombo forKey:@"highestCombo"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    [[NSUserDefaults standardUserDefaults] setInteger:currentExp forKey:@"currentExp"];  
    [[NSUserDefaults standardUserDefaults] synchronize];
    if (flexLevel < 50) {
       if (currentExp >= maxExp) {
        currentExp = currentExp - maxExp;
        if (currentExp >= maxExp) {
            flexLevel++;
            currentExp = currentExp - maxExp;
        }
        [[NSUserDefaults standardUserDefaults] setInteger:currentExp forKey:@"currentExp"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        if (flexLevel %2 == 0) {
            maxExp = 100 + (flexLevel * 14);
        }
        if (flexLevel %2 == 0) {
            maxExp = 100 + (flexLevel * 15);
        }
        [[NSUserDefaults standardUserDefaults] setInteger:maxExp forKey:@"maxExp"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        flexLevel++;
        [[NSUserDefaults standardUserDefaults] setInteger:flexLevel forKey:@"flexLevel"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        leveledUp = 1;
        [self submitScore];
       }
    }
    
    ////
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(aniStats) userInfo:nil repeats:YES];
}

-(void)aniStats{
    statTime ++;
    if (goodToGo == 0 && statTime == 25) {
        timeOver.hidden = TRUE;
        goodToGo = 1;
        statTime = 0;
    }
    if (goodToGo == 1) {
        timeOver.hidden = TRUE;
        if (statTime == 1) {
 
            if (canSound == 0 ) {
                slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
                [appDelegate stopMusic];
                [appDelegate qMusic];
                
            }

            [[NSUserDefaults standardUserDefaults] setObject:@"levelSelect" forKey:@"location"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            [UIImageView beginAnimations:nil context:NULL];
            [UIImageView setAnimationDuration:.3];
            [UIImageView setAnimationRepeatCount:1];
            [UIImageView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(160.0f, 310.0f);
            arrow.center = position;
            [UIImageView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position1 = CGPointMake(141.0f, 170.0f); // 136
            scoreText.center = position1;
            [UILabel commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position2 = CGPointMake(205.0f, 170.0f);
            scoreLabel.center = position2;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position3 = CGPointMake(205.0f, 208.0f);
            topazLabel.center = position3;
            [UIView commitAnimations];
            
            [UIImageView beginAnimations:nil context:NULL];
            [UIImageView setAnimationDuration:.3];
            [UIImageView setAnimationRepeatCount:1];
            [UIImageView setAnimationRepeatAutoreverses:NO];
            CGPoint position4 = CGPointMake(141.0f, 249.0f);
            comboText.center = position4;
            [UIImageView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position5 = CGPointMake(205.0f, 248.0f);
            lastBarText.center = position5;
            [UIView commitAnimations];
            
        }
        if (statTime == 15) {
            [UIProgressView beginAnimations:nil context:NULL];     
            [UIProgressView setAnimationDuration:.3];
            [UIProgressView setAnimationRepeatCount:1];
            [UIProgressView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(160.0f, 462.0f);
            expBar.center = position;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position1 = CGPointMake(160.0f, 448.0f); // 459
            toGo.center = position1;
            [UIView commitAnimations];
            
            expBar.progress = (double)oldExp/oldMax;
        }
        if (statTime == 19) {
            if (leveledUp == 0) {
                [expBar setProgress:(double)currentExp/maxExp animated:YES];
                statTime = 118;
            }
            if (leveledUp == 1) {
                [expBar setProgress:1.0 animated:YES];
                
                CGPoint position = CGPointMake(114.0f, 126.0f);
                Level.center = position;
                
                [UIView beginAnimations:nil context:NULL];     
                [UIView setAnimationDuration:.3];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                Level.transform = CGAffineTransformMakeScale(195.0f, 131.0f);
                [UIView commitAnimations];
                
                step = 2;
            }
           
        }
        
        if (statTime == 23 && step == 2) {
            CGPoint position1 = CGPointMake(220.0f, 240.0f);
            Up.center = position1;
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            Up.transform = CGAffineTransformMakeScale(160.0f, 108.0f);
            [UIView commitAnimations];
        }
        
        if (statTime == 37 && step == 2) {
            
            int hurray = 1;
            if (flexLevel == 10) {
                [[NSUserDefaults standardUserDefaults] setInteger:hurray forKey:@"backgroundEightOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                                      @"New Background Unlocked!"
                                                                message:
                                      @"You have reached Flex Level 10!"
                                      delegate
                                                                       : self cancelButtonTitle:
                                      @"Okay"
                                                      otherButtonTitles: nil];
                [alert show];
                
            }
            if (flexLevel == 20) {
                int hey =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
                hey = hey + 2000;
                [[NSUserDefaults standardUserDefaults] setInteger:hey forKey:@"coins"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] setInteger:hurray forKey:@"backgroundEightOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                                      @"You have received 2,000 Topaz!"
                                                                message:
                                      @"You have reached Flex Level 20!"
                                      delegate
                                                                       : self cancelButtonTitle:
                                      @"Okay"
                                                      otherButtonTitles: nil];
                [alert show];
                
            }
            
            if (flexLevel == 30) {
                [[NSUserDefaults standardUserDefaults] setInteger:hurray forKey:@"backgroundNineOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                                      @"New Background Unlocked!"
                                                                message:
                                      @"You have reached Flex Level 30!"
                                      delegate
                                                                       : self cancelButtonTitle:
                                      @"Okay"
                                                      otherButtonTitles: nil];
                [alert show];
                
            }
            if (flexLevel == 40) {
                int hey =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
                hey = hey + 5000;
                [[NSUserDefaults standardUserDefaults] setInteger:hey forKey:@"coins"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] setInteger:hurray forKey:@"backgroundEightOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                                      @"You have received 5,000 Topaz!"
                                                                message:
                                      @"You have reached Flex Level 40!"
                                      delegate
                                                                       : self cancelButtonTitle:
                                      @"Okay"
                                                      otherButtonTitles: nil];
                [alert show];
                
            }
            
            if (flexLevel == 50) {
                [[NSUserDefaults standardUserDefaults] setInteger:hurray forKey:@"backgroundTenOwn"];  
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                                      @"New Background Unlocked!"
                                                                message:
                                      @"You have reached Flex Level 50!"
                                      delegate
                                                                       : self cancelButtonTitle:
                                      @"Okay"
                                                      otherButtonTitles: nil];
                [alert show];
                
            }

            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(160.0f, 356.0f);
            flexLevelLabel.center = position;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            CGPoint position1 = CGPointMake(160.0f, 406.0f);
            flexLeveltext.center = position1;
            [UIView commitAnimations];
        }
        if (statTime == 50 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 52 && step == 2) {
           flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 62 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 64 && step == 2) {
           flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 74 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 76 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 78 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 80 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 81 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 82 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 83 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
        }
        if (statTime == 84 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel];
        }
        if (statTime == 85 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@""];
            flexLeveltext.transform = CGAffineTransformMakeScale(5.0f, 5.0f);
        }
        if (statTime == 100 && step == 2) {
            flexLeveltext.text = [NSString stringWithFormat:@"%i", oldFlexLevel+1];
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.5];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            flexLeveltext.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
            [UIView commitAnimations];
        }
        if (statTime == 115 && step == 2) {
             [UILabel beginAnimations:nil context:NULL];     
             [UILabel setAnimationDuration:.3];
             [UILabel setAnimationRepeatCount:1];
             [UILabel setAnimationRepeatAutoreverses:NO];
             CGPoint position = CGPointMake(400.0f, 356.0f);
             flexLevelLabel.center = position;
             [UIView commitAnimations];
             
             [UILabel beginAnimations:nil context:NULL];     
             [UILabel setAnimationDuration:.3];
             [UILabel setAnimationRepeatCount:1];
             [UILabel setAnimationRepeatAutoreverses:NO];
             CGPoint position1 = CGPointMake(400.0f, 406.0f);
             flexLeveltext.center = position1;
             [UIView commitAnimations];
         }
        if (statTime == 118 && step == 2) {
            expBar.progress = 0.0;
        }
        if (statTime == 119 && step == 2) {
            [expBar setProgress:(double)currentExp/maxExp animated:YES];    
            Level.hidden = TRUE;
            Up.hidden = TRUE;
        }
        
        if (statTime == 123) {
            toGo.hidden = FALSE;
            toGo.text = [NSString stringWithFormat:@"%i to go!",maxExp-currentExp];
        }
        
        if (statTime == 125) {
            if (hasSphere == 0) {
            [UIButton beginAnimations:nil context:NULL];     
            [UIButton setAnimationDuration:.3];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(96.0f, 350.0f);
            goToMenu.center = position;
            [UIView commitAnimations];
            
            [UIButton beginAnimations:nil context:NULL];     
            [UIButton setAnimationDuration:.3];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            CGPoint position1 = CGPointMake(224.0f, 350.0f);
            replay.center = position1;
            [UIView commitAnimations];
                

            }
            if (hasSphere == 1) {
                [UIButton beginAnimations:nil context:NULL];     
                [UIButton setAnimationDuration:.3];
                [UIButton setAnimationRepeatCount:1];
                [UIButton setAnimationRepeatAutoreverses:NO];
                CGPoint position = CGPointMake(160.0f, 350.0f);
                next.center = position;
                [UIView commitAnimations];
            }
        }
    

       
    }
    
}

-(void)hideThings{
    badSlideImage.hidden = TRUE;
    comboKing.hidden = TRUE;
    crazyCombo.hidden = TRUE;
    doublePowerUp.hidden = TRUE;
    doublePrompt.hidden = TRUE;
    freezeBeam.hidden = TRUE;
    freezeIce.hidden = TRUE;
    freezePowerUp.hidden = TRUE;
    freezePrompt.hidden = TRUE;
    tenPowerUp.hidden = TRUE;
    tenPrompt.hidden = TRUE;
    ultraCombo.hidden = TRUE;
    unstoppableCombo.hidden = TRUE;
    mysteryPrompt.hidden = TRUE;
    mysteryPowerUp.hidden = TRUE;
    
}
-(void)showThings{
    badSlideImage.hidden = FALSE;
    comboKing.hidden = FALSE;
    crazyCombo.hidden = FALSE;
    doublePowerUp.hidden = FALSE;
    doublePrompt.hidden = FALSE;
    freezeBeam.hidden = FALSE;
    freezeIce.hidden = FALSE;
    freezePowerUp.hidden = FALSE;
    freezePrompt.hidden = FALSE;
    tenPowerUp.hidden = FALSE;
    mysteryPowerUp.hidden = FALSE;
    tenPrompt.hidden = FALSE;
    ultraCombo.hidden = FALSE;
    unstoppableCombo.hidden = FALSE;
    mysteryPrompt.hidden = FALSE;
    
}

-(IBAction)pause:(id)sender{
    pauseButton.hidden = TRUE;
    [slider removeFromSuperview];
    [slider1 removeFromSuperview];
    [aniSlider removeFromSuperview];
    [aniSlider2 removeFromSuperview];
    [self hideThings];
        CGPoint position = CGPointMake(160.0f, 190.0f);
        gamePaused.center = position;
        CGPoint position1 = CGPointMake(76.0f, 354.0f);
        menu.center = position1;
        CGPoint position2 = CGPointMake(160.0f, 354.0f);
        replayPaused.center = position2;
        CGPoint position3 = CGPointMake(244.0f, 354.0f);
        continePlay.center = position3;
        [timer invalidate]; 
}

-(IBAction)pausePlay:(id)sender{ 
    pauseButton.hidden = FALSE;
    [self showThings];
    [self Doubles];
    CGPoint position = CGPointMake(1640.0f, 114.0f);
    gamePaused.center = position;
    CGPoint position1 = CGPointMake(820.0f, 272.0f);
    menu.center = position1;
    CGPoint position2 = CGPointMake(1600.0f, 272.0f);
    replayPaused.center = position2;
    CGPoint position3 = CGPointMake(2380.0f, 272.0f);
    continePlay.center = position3;
    pause = 0;
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timeTicking) userInfo:nil repeats:YES];
}
-(IBAction)pauseMenu:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];
    [appDelegate qMusic];
    [self goToMenu:(id)sender];
}
-(IBAction)pauseReplay:(id)sender{

    [self replay:(id)sender];
}

-(IBAction)replay:(id)sender{
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];

    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    flexModeCountdown *Sword = [[flexModeCountdown alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)next:(id)sender{
    if (hasSphere == 1 && leveledUp == 0) { // sphere
        int has = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:has forKey:@"flexPrize"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    if (hasSphere == 0  && leveledUp == 1) { // level
        int has = 2;
        [[NSUserDefaults standardUserDefaults] setInteger:has forKey:@"flexPrize"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    if (hasSphere == 1 && leveledUp == 1) { // level and sphere
        int has = 3;
        [[NSUserDefaults standardUserDefaults] setInteger:has forKey:@"flexPrize"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    flexModePrize *Sword = [[flexModePrize alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
}
-(IBAction)goToMenu:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    flexModeMenu *Sword = [[flexModeMenu alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(void)submitScore{ 
    int level = [[NSUserDefaults standardUserDefaults] integerForKey:@"flexLevel"];
    
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"kjnfl34"];
    scoreReporter.value = level;
    scoreReporter.context = 0;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error){
        if (error != nil) {
            NSLog(@"Submitting a Score Failed");
        }
        else{
            NSLog(@"Submitting a Score Succeeded!!!");
        }
    }];
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
    if (IS_WIDESCREEN) {
        screenSize = 1;
    }
    else{
        screenSize = 0;
    }

    [scoreLabel setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [lastBarText setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [topazLabel setFont:[UIFont fontWithName:@"Krona One" size:13]];
    
    [scoreText setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [comboText setFont:[UIFont fontWithName:@"Krona One" size:13]];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    [[NSUserDefaults standardUserDefaults] setObject:@"inGame" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
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
    
    [gamePaused setFont:[UIFont fontWithName:@"Krona One" size:50]];
    [combos setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [timeLabel setFont:[UIFont fontWithName:@"Krona One" size:14]];
    
    [timeOver setFont:[UIFont fontWithName:@"Krona One" size:18]];
    
    [flexLevelLabel setFont:[UIFont fontWithName:@"Krona One" size:15]];
    [flexLeveltext setFont:[UIFont fontWithName:@"Krona One" size:40]];
    
    [called setFont:[UIFont fontWithName:@"Krona One" size:15]];
    
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

    toGo.hidden = TRUE;
    goodToGo = 0;
    hadSecondWind = 0;
    hasSphere = 0;
    secondWindChance = [[NSUserDefaults standardUserDefaults] integerForKey:@"secondWindChance"];
    pTimeOnScreen = 5.0;
    nums = arc4random() % 2 + 1; // either 3 or 4 power ups
    if (nums == 1) {
        firstPTime = arc4random() % 11 + 7;
        secondPTime = arc4random() % 9 + 22;
        thirdPTime = arc4random() % 9 + 37;
    }
    if (nums == 2) {
        firstPTime = arc4random() % 11 + 7;
        secondPTime = arc4random() % 9 + 22;
        thirdPTime = arc4random() % 9 + 37;
        fourthPTime = arc4random() % 9 + 51;
    }
    playerTime = 60;
    timeLabel.text = [NSString stringWithFormat:@"%.2f",playerTime];
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(timeTicking) userInfo:nil repeats:YES];
    [self Singles];
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
