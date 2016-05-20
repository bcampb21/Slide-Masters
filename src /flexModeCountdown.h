//
//  flexModeCountdown.h
//  Slide Masters
//
//  Created by Blake Campbell on 3/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "slidemastersAppDelegate.h"

@interface flexModeCountdown : UIViewController{
    
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int num;
    IBOutlet UILabel *prompt;
    IBOutlet UILabel *prompt1;
    IBOutlet UILabel *prompt2;
    IBOutlet UILabel *prompt3;
    IBOutlet UILabel *numbers;
    IBOutlet UILabel *ready;
    
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

    NSTimer *timer;
}

@end
