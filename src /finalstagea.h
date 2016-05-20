//
//  finalstagea.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface finalstagea : UIViewController{
    slidemastersAppDelegate *appdelegate;
    int slidesLeft;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    float sup;
    float current;
    IBOutlet UIImageView *blue;
    IBOutlet UISlider *slider;
    IBOutlet UISlider *slider1;
    IBOutlet UISlider *slider2;
    IBOutlet UISlider *slider3;
    IBOutlet UISlider *sliderOne;
    IBOutlet UISlider *sliderTwo;
    IBOutlet UISlider *sliderThree;
    IBOutlet UISlider *sliderFour;

    int number;
    int direction; // for first
    int direction1;
    int direction2;
    int direction3;
    int type; // for first slider
    int type1; 
    int type2; 
    int type3;
    int onScreen;
    NSTimer *timer;
    int seconds;
    NSTimer *delay;
    int bad; // 0, 1, 2, 3 remove that slide when done. (default is 5)
    int badCon;
    
    int delaySeconds;

}
@property(nonatomic, retain) IBOutlet UISlider *slider;
@property(nonatomic, retain) IBOutlet UISlider *slider1;
@property(nonatomic, retain) IBOutlet UISlider *slider2;
@property(nonatomic, retain) IBOutlet UISlider *slider3;
@property(nonatomic, retain) IBOutlet UISlider *sliderOne;
@property(nonatomic, retain) IBOutlet UISlider *sliderTwo;
@property(nonatomic, retain) IBOutlet UISlider *sliderThree;
@property(nonatomic, retain) IBOutlet UISlider *sliderFour;

-(void)check;
-(void)check1;
-(void)check2;
-(void)check3;

-(void)sliders;
-(void)failed;
-(void)counting;

@end
