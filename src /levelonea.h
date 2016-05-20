//
//  levelonea.h
//  Slide Masters
//
//  Created by Blake Campbell on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelonea : UIViewController{
    NSTimer *levelonetimer; // Levelonetimer is the name for all timers (in the delegate)
    float current1;
    float high1;
    int levelonepass;
    int first1;
    
    slidemastersAppDelegate *appdelegate;
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    float sup;
    float current;
    IBOutlet UISlider *slider;
    int number;
    int direction;
    int type;
    
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
-(void)check;

-(void)counting;
-(void)start1;
-(void)stoplevelonetimer;
-(void)savehigh1;

-(IBAction)startOver:(id)sender;


    
@end
