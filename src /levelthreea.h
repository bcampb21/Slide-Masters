//
//  levelthreea.h
//  Slide Masters
//
//  Created by Blake Campbell on 4/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelthreea : UIViewController{
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
-(void)sliders;
-(IBAction)startOver:(id)sender;

@end
