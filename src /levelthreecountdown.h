//
//  levelthreecountdown.h
//  Slide Masters
//
//  Created by Blake Campbell on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface levelthreecountdown : UIViewController{
    slidemastersAppDelegate *appdelegate;
    NSTimer *timer;
    IBOutlet UILabel *countdown;
    int mynum;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
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
-(void)counting;

@end
