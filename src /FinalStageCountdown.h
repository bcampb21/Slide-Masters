//
//  FinalStageCountdown.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>


@interface FinalStageCountdown : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    slidemastersAppDelegate *appdelegate;
    NSTimer *timer;
    IBOutlet UILabel *countdown;
    int mynum;
}
-(void)counting;

@end
