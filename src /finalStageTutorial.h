//
//  finalStageTutorial.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "slidemastersAppDelegate.h"

@interface finalStageTutorial : UIViewController{
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *words;
    IBOutlet UIImageView *badThumb;
    IBOutlet UIImageView *badTrack;
    IBOutlet UIImageView *masterToken1;
    IBOutlet UIImageView *masterToken2;
    IBOutlet UIImageView *masterToken3;
    IBOutlet UIImageView *slider1;
    IBOutlet UIImageView *slider2;
    IBOutlet UIImageView *slider3;
    IBOutlet UILabel *masterLabel;
    
    int wordIndex;
    
}
-(IBAction)next:(id)sender;
-(void)moveWords;
@end
