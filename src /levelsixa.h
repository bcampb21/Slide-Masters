//
//  levelsixa.h
//  Slide Masters
//
//  Created by Blake Campbell on 5/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelsixa : UIViewController{
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    float sup;
    float current;
    IBOutlet UISlider *slider;
    IBOutlet UISlider *slider1;
    int number;
    int direction; // for first
    int direction1; // for Second
    int type; // for first slider
    int type1; // for Second slider
    int onScreen; // number of sliders on screen. Default is 1.
    
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
-(void)check;
-(void)check1; // for Second slide
-(void)sliders;
-(IBAction)startOver:(id)sender;


@end
