//
//  finalstagea.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "finalstagea.h"
#import "finalstagefail.h"
#import "finalstagedone.h"
@implementation finalstagea
@synthesize slider, slider1, slider2, slider3, sliderOne , sliderTwo, sliderThree, sliderFour;

-(void)sliders{
    number++;
    if (bad == 0) {
        [slider removeFromSuperview];
    }
    if (bad == 1) {
        [slider1 removeFromSuperview];
    }
    if (bad == 2) {
        [slider2 removeFromSuperview];
    }
    if (bad == 3) {
        [slider3 removeFromSuperview];
    }
    if (badCon == 1) {
        [slider1 removeFromSuperview];
        [slider2 removeFromSuperview];
    }
    if (badCon == 2) {
        [slider removeFromSuperview];
        [slider2 removeFromSuperview];
        [slider3 removeFromSuperview];
    }
    if (badCon == 3) {
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
    }
    type = 0;
    type1 = 0;
    type2 = 0;
    type3 = 0;
    bad = 5; // reset
    badCon = 0;
    direction = number;
    direction1 = number;
    direction2 = number;
    direction3 = number;
    onScreen = 1;
    if (number == 1) {
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
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
    }
    if (number == 2) {
        onScreen = 2;
        CGRect frame = CGRectMake(56, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 3) {
        onScreen = 2;
        CGRect frame = CGRectMake(90, 70, 140, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        CGRect frame1 = CGRectMake(90, 210, 140, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        bad = 1;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(90, 350, 140, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 98.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
    }
    if (number == 4) {
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
        
    }
    if (number == 5) {
        onScreen = 2;
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2.0;
        [self.view addSubview:slider];
        // Do any additional setup after loading the view from its nib.
        
        CGRect frame1 = CGRectMake(160, 380, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2.0;
        
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 6) {
        onScreen = 2;
        CGRect frame = CGRectMake(170, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(170, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 7) {
        CGRect frame = CGRectMake(15, 182, 290, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 98.0;
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 245, 290, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 98.0;
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 8) {
        onScreen = 2;
        CGRect frame = CGRectMake(110, 305, 100, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 95.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(50, 305, 100, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        bad = 1;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 5.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(70, 225, 120, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type2 = 1;
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 5.0;
        
        
        [self.view addSubview:slider2];
    }
    if (number == 9) {
        badCon = 1;
        CGRect frame = CGRectMake(140, 245, 100, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 5.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(80, 245, 100, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 95.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(100, 165, 120, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        bad = 2;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = YES;
        slider2.value = 95.0;
        
        
        [self.view addSubview:slider2];
        
    }
    if (number == 10) {
        bad = 0;
        CGRect frame = CGRectMake(160, 210, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 98;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 210, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1.0;
        
        
        
        [self.view addSubview:slider1];
    }
    if (number == 11) {
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2;
        
        [self.view addSubview:slider];
        
    }
    if (number == 12) {
        CGRect frame = CGRectMake(56, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 2.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
    }
    if (number == 13) {
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
        
    }
    if (number == 14) {
        CGRect frame = CGRectMake(90, 60, 143, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        [self.view addSubview:slider];
    }
    if (number == 15) {
        CGRect frame = CGRectMake(90, 190, 143, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
    }
    if (number == 16) {
        bad = 0;
        CGRect frame = CGRectMake(90, 290, 143, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 238.00/180*M_PI);
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 30, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2.0;
        [self.view addSubview:slider1];
        
    }
    if (number == 17) {
        CGRect frame = CGRectMake(-175, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
    }
    if (number == 18) {
        CGRect frame = CGRectMake(-115, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
    } // r
    if (number == 19) {
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
    } // s
    if (number == 20) {
        CGRect frame = CGRectMake(5, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
    } // t
    if (number == 21) {
        bad = 0;
        CGRect frame = CGRectMake(65, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 1;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 30, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 2.0;
        [self.view addSubview:slider1];
        
    } // u
    if (number == 22) {
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
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 95, 290, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        bad = 1;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 98.0;
        
        
        
        [self.view addSubview:slider1];
    } // v
    if (number == 23) {
        CGRect frame = CGRectMake(-65, 90, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 98.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(175, 90, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    } // w
    if (number == 24) {
        CGRect frame = CGRectMake(160, 210, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 98;
        bad= 0;
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 210, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1.0;
        
        
        
        [self.view addSubview:slider1];
        
    } // x
    if (number == 25) {
        onScreen = 4;
        CGRect frame = CGRectMake(220, 210, 120, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 5.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(140, 210, 120, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 95.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(-20, 210, 120, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 95.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        [self.view addSubview:slider2];
        
        CGRect frame3 = CGRectMake(60, 210, 120, 59);
        slider3 = [[UISlider alloc] initWithFrame:frame3];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider3 addTarget:self action:@selector(check3) forControlEvents:UIControlEventValueChanged];
        slider3.backgroundColor = [UIColor clearColor];
        [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider3 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type3 = 1;
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 100;
        slider3.continuous = NO;
        slider3.value = 5.0;
        slider3.transform = CGAffineTransformRotate(slider3.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider3];
    } // y
    if (number == 26) {
        badCon = 2;
        CGRect frame = CGRectMake(220, 255, 120, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 95.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(140, 195, 120, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 5.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(-20, 195, 120, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = YES;
        slider2.value = 5.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        [self.view addSubview:slider2];
        
        CGRect frame3 = CGRectMake(60, 255, 120, 59);
        slider3 = [[UISlider alloc] initWithFrame:frame3];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider3 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider3.backgroundColor = [UIColor clearColor];
        [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider3 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 100;
        slider3.continuous = YES;
        slider3.value = 95.0;
        slider3.transform = CGAffineTransformRotate(slider3.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider3];
        
    } // z
    if (number == 27) {
        badCon = 1;
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
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(-120, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 99.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(10, 210, 430, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = YES;
        slider2.value = 99.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
    } // Aa
    if (number == 28) {
        badCon = 3;
        CGRect frame = CGRectMake(-55, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(-120, 210, 430, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
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
        
        
        type2 = 1;
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 1.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
    } // Ab
    if (number == 29) {
        bad = 0;
        CGRect frame = CGRectMake(112, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 2;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        
        [self.view addSubview:slider1];
    } // Ac
    if (number == 30) {
        CGRect frame = CGRectMake(56, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 2.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(56, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    } // Ad
    if (number == 31) {
        bad = 0;
        CGRect frame = CGRectMake(160, 380, 145, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideright.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 4;
        
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(15, 380, 145, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"horblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"hororange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        
        
        [self.view addSubview:slider1];
        
    } // Ae
    if (number == 32) {
        onScreen = 3;
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
        
        
        type2 = 1;
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 1.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
        
        CGRect frame3 = CGRectMake(56, 93, 210, 59);
        slider3 = [[UISlider alloc] initWithFrame:frame3];
        bad = 3;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider3 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [slider3 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider3.minimumValue = 0.0;
        slider3.maximumValue = 100;
        slider3.continuous = YES;
        slider3.value = 1.0;
        slider3.transform = CGAffineTransformRotate(slider3.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider3];
        
    } // Af
    if (number == 33) {
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
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2.0;
        [self.view addSubview:slider];
    } // Ag
    if (number == 34) {
        CGRect frame = CGRectMake(-55, 200, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
    } // Ah
    if (number == 35) {
        onScreen = 2;
        CGRect frame = CGRectMake(112, 120, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 98.0;
        
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(0, 300, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"slideleft.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
    } // Ai
    if (number == 36) {
        onScreen = 2;
        CGRect frame = CGRectMake(164, 75, 140, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 1.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(88, 197, 140, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type1 = 1;
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 1.0;
        
        slider1.transform = CGAffineTransformRotate(slider1.transform, 122.00/180*M_PI);
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(13, 320, 140, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        type2 = 1;
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 1.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 122.0/180*M_PI);
        
        [self.view addSubview:slider2];
        
    } // Aj
    if (number == 37) {
        CGRect frame = CGRectMake(-55, 200, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 122.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
    } // Ak
    if (number == 38) {
        CGRect frame = CGRectMake(65, 210, 430, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        // in case the parent view draws with a custom color or gradient, use a transparent color
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 99;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        [self.view addSubview:slider];
    } // Al
    if (number == 39) {
        CGRect frame = CGRectMake(170, 93, 210, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(check) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        
        type = 1;
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = NO;
        slider.value = 2;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(170, 307, 210, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        bad = 1;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"FireA2.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"upslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = YES;
        slider1.value = 2;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider1];
    } // Am
    if (number == 40) {
        onScreen = 2;
        CGRect frame = CGRectMake(210, 70, 140, 59);
        slider = [[UISlider alloc] initWithFrame:frame];
        bad = 0;
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider addTarget:self action:@selector(failed) forControlEvents:UIControlEventValueChanged];
        slider.backgroundColor = [UIColor clearColor];
        [self.slider setMinimumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [self.slider setMaximumTrackImage:[UIImage imageNamed:@"FireA1.png"]
                                 forState:UIControlStateNormal];
        [slider setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider.minimumValue = 0.0;
        slider.maximumValue = 100;
        slider.continuous = YES;
        slider.value = 98.0;
        slider.transform = CGAffineTransformRotate(slider.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider];
        
        CGRect frame1 = CGRectMake(210, 210, 140, 59);
        slider1 = [[UISlider alloc] initWithFrame:frame1];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider1 addTarget:self action:@selector(check1) forControlEvents:UIControlEventValueChanged];
        slider1.backgroundColor = [UIColor clearColor];
        [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider1 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider1.minimumValue = 0.0;
        slider1.maximumValue = 100;
        slider1.continuous = NO;
        slider1.value = 98.0;
        slider1.transform = CGAffineTransformRotate(slider1.transform, 270.00/180*M_PI);
        
        
        [self.view addSubview:slider1];
        
        CGRect frame2 = CGRectMake(210, 350, 140, 59);
        slider2 = [[UISlider alloc] initWithFrame:frame2];
        
        // in case the parent view draws with a custom color or gradient, use a transparent color
        [slider2 addTarget:self action:@selector(check2) forControlEvents:UIControlEventValueChanged];
        slider2.backgroundColor = [UIColor clearColor];
        [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"vertblue.png"]
                                  forState:UIControlStateNormal];
        [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"vertorange.png"]
                                  forState:UIControlStateNormal];
        [slider2 setThumbImage: [UIImage imageNamed:@"downslide.png"] forState:UIControlStateNormal];
        
        
        slider2.minimumValue = 0.0;
        slider2.maximumValue = 100;
        slider2.continuous = NO;
        slider2.value = 98.0;
        slider2.transform = CGAffineTransformRotate(slider2.transform, 270.0/180*M_PI);
        
        
        [self.view addSubview:slider2];
    } // An (done. new)

}

-(void)check {
    if (type == 0 && slider.value < 4){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
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
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction == 3) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction == 6) {
            position = CGPointMake(280.0f, 800.0f);
        }
        if (direction == 8) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction == 14) {
            position = CGPointMake(450.0f, 690.0f);
        }
        if (direction == 18) {
            position = CGPointMake(102.0f, 800.0f);
        }
        if (direction == 20) {
            position = CGPointMake(224.0f, 800.0f);
        }
        if (direction == 22) {
            position = CGPointMake(-338.0f, 62.0f);
        }
        if (direction == 27) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction == 35) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (direction == 37) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (direction == 38) {
            position = CGPointMake(282.0f, 800.0f);
        }
        sliderOne = slider;
        sliderOne.center = position;
        [UIView commitAnimations];
        if (direction == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
    if (type == 1 && slider.value > 98){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction == 1) {
            position = CGPointMake(160.0f, 700.0f);
        }
        if (direction == 4) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 5) {
            position = CGPointMake(658.0f, 62.0f);
        }
        if (direction == 9) {
            position = CGPointMake(195.0f, -220.0f);
        }
        if (direction == 11) {
            position = CGPointMake(658.0f, 240.0f);
        }
        if (direction == 13) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 15) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction == 17) {
            position = CGPointMake(45.0f, -220.0f);
        }
        if (direction == 19) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 25) {
            position = CGPointMake(288.0f, -220.0f);
        }
        if (direction == 32) {
            position = CGPointMake(160.0f, -220.0f);
        }
        if (direction == 33) {
            position = CGPointMake(658.0f, 62.0f);
        }
        if (direction == 34) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction == 39) {
            position = CGPointMake(282.0f, -220.0f);
        }
        if (direction == 41) {
            position = CGPointMake(160.0f, 700.0f);
        }

        sliderOne = slider;
        sliderOne.center = position;
        [UIView commitAnimations];
        if (direction == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
    
}
-(void)check1{
    if (type1 == 0 && slider1.value < 4){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction1 == 1) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction1 == 2) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction1 == 7) {
            position = CGPointMake(-338.0f, 275.0f);
        }
        if (direction1 == 12) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction1 == 23) {
            position = CGPointMake(285.0f, 800.0f);
        }
        if (direction1 == 25) {
            position = CGPointMake(205.0f, 800.0f);
        }
        if (direction1 == 29) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (direction1 == 30) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction1 == 31) {
            position = CGPointMake(-338.0f, 408.0f);
        }
        if (direction1 == 35) {
            position = CGPointMake(450.0f, -220.0f);
        }
        if (direction1 == 40) {
            position = CGPointMake(282.0f, 800.0f);
        }
        sliderTwo = slider1;
      
        sliderTwo.center = position;
        [UIView commitAnimations];
        if (direction1 == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
    if (type1 == 1 && slider1.value > 98){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction1 == 1) {
            position = CGPointMake(160.0f, 700.0f);
        }
        if (direction1 == 5) {
            position = CGPointMake(658.0f, 409.0f);
        }
        if (direction1 == 6) {
            position = CGPointMake(280.0f, -220.0f);
        }
        if (direction1 == 10) {
            position = CGPointMake(658.0f, 240.0f);
        }
        if (direction1 == 16) {
            position = CGPointMake(658.0f, 62.0f);
        }
        if (direction1 == 21) {
            position = CGPointMake(658.0f, 62.0f);
        }
        if (direction1 == 24) {
            position = CGPointMake(658.0f, 240.0f);
        }
        if (direction1 == 26) {
            position = CGPointMake(205.0f, -220.0f);
        }
        if (direction1 == 32) {
            position = CGPointMake(96.0f, -220.0f);
        }
        if (direction1 == 36) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction1 == 41) {
            position = CGPointMake(160.0f, 700.0f);
        }
        sliderTwo = slider1;
        
        sliderTwo.center = position;
        [UIView commitAnimations];
        if (direction1 == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
       
    
}
-(void)check2{
    if (type2 == 0 && slider2.value < 4){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction2 == 1) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction2 == 3) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction2 == 25) {
            position = CGPointMake(48.0f, 800.0f);
        }
        if (direction2 == 40) {
            position = CGPointMake(282.0f, 800.0f);
        }
        sliderThree = slider2;
        sliderThree.center = position;
        [UIView commitAnimations];
        if (direction2 == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
    if (type2 == 1 && slider2.value > 98){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction2 == 1) {
            position = CGPointMake(160.0f, 700.0f);
        }
        if (direction2 == 8) {
            position = CGPointMake(658.0f, 254.0f);
        }
        if (direction2 == 28) {
            position = CGPointMake(227.0f, -220.0f);
        }
        if (direction2 == 32) {
            position = CGPointMake(227.0f, -220.0f);
        }
        if (direction2 == 36) {
            position = CGPointMake(-350.0f, 1040.0f);
        }
        if (direction2 == 41) {
            position = CGPointMake(160.0f, 700.0f);
        }
        sliderThree = slider2;
        sliderThree.center = position;
        [UIView commitAnimations];
        if (direction2 == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }

}
-(void)check3{
    if (type3 == 0 && slider3.value < 4){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 800.0f);
        if (direction3 == 1) {
            position = CGPointMake(160.0f, 800.0f);
        }
        if (direction3 == 41) {
            position = CGPointMake(160.0f, 800.0f);
        }
        sliderFour = slider3;
        sliderFour.center = position;
        [UIView commitAnimations];
        if (direction3 == 40 && onScreen == 0) {
            NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
    if (type3 == 1 && slider3.value > 98){
        if (canSound == 0) {
            [audioPlayer play];
        }
        slidesLeft--;
        onScreen--;
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.285];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        CGPoint position = CGPointMake(160.0f, 700.0f);
        if (direction3 == 1) {
            position = CGPointMake(160.0f, 700.0f);
        }
        if (direction3 == 25) {
            position = CGPointMake(128.0f, -220.0f);
        }
        sliderFour = slider3;
        sliderFour.center = position;

        [UIView commitAnimations];
        if (direction3 == 40 && onScreen == 0) {
             NSLog(@"Saved");
            int a = 100 - seconds;
            [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"finalClock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            finalstagedone *Sword = [[finalstagedone alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO]; 
        }

        if (onScreen == 0) {
            [self sliders];
        }

        
    }
}
-(void)failed {
    [timer invalidate];
    [[NSUserDefaults standardUserDefaults] setInteger:slidesLeft forKey:@"slidesLeft"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    int cause = 0;
    [[NSUserDefaults standardUserDefaults] setInteger:cause forKey:@"finalCause"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    finalstagefail *Sword = [[finalstagefail alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
}

-(void)counting{ // Problem is around here somewhere
    seconds--; 
    if (seconds <= 0) {
        [timer invalidate];
        [slider removeFromSuperview];
        [slider1 removeFromSuperview];
        [slider2 removeFromSuperview];
        [slider3 removeFromSuperview];
         delay = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(done) userInfo:nil repeats:YES]; // allows animations to play out.
    }
}
-(void)done{
    delaySeconds++;
    if (delaySeconds >= 2) {
    int cause = 1;
    [[NSUserDefaults standardUserDefaults] setInteger:cause forKey:@"finalCause"];
    [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] setInteger:slidesLeft forKey:@"slidesLeft"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    [delay invalidate];
    finalstagefail *Sword = [[finalstagefail alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    }
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
    if (canSound == 0 ) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qPlayingMusic];
        
    }
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/popSound.wav", [[NSBundle mainBundle] resourcePath]]]; /// SlideMastersThemeV1.mp3
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	if (audioPlayer == nil)
		NSLog(@"not working");
	else
        audioPlayer.currentTime = 0;
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    [self sliders];
    seconds = 30;
    slidesLeft = 53;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(counting) userInfo:nil repeats:YES];
    

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
