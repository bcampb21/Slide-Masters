//
//  levelninea.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelninea : UIViewController{
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    float sup;
    float current;
    IBOutlet UISlider *slider;
    IBOutlet UISlider *slider1;
    IBOutlet UISlider *slider2;
    IBOutlet UISlider *slider3;
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
    
    IBOutlet UIImageView *backgroundOriginal;
    IBOutlet UIImageView *backgroundOne;
    IBOutlet UIImageView *backgroundTwo;
    IBOutlet UIImageView *backgroundThree;
    IBOutlet UIImageView *backgroundFour;
    IBOutlet UIImageView *backgroundFive;
    IBOutlet UIImageView *backgroundSix;
    IBOutlet UIImageView *backgroundSeven;
    IBOutlet UIImageView *backgroundEight;
    IBOutlet UIImageView *backgroundNine;
    IBOutlet UIImageView *backgroundTen;

}
@property(nonatomic, retain) IBOutlet UISlider *slider;
@property(nonatomic, retain) IBOutlet UISlider *slider1;
@property(nonatomic, retain) IBOutlet UISlider *slider2;
@property(nonatomic, retain) IBOutlet UISlider *slider3;
-(void)check;
-(void)check1;
-(void)check2;
-(void)check3;
-(void)sliders;
-(IBAction)startOver:(id)sender;

@end
