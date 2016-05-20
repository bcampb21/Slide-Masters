//
//  finalstagefail.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "slidemastersAppDelegate.h"

@interface finalstagefail : UIViewController{
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *label;
    IBOutlet UILabel *slidersLeft;
}
-(IBAction)back:(id)sender;
@end
