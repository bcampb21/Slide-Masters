//
//  finalstagedone.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface finalstagedone : UIViewController{
slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    int method;
 
    IBOutlet UILabel *timelabel;
    IBOutlet UILabel *highlabel;
    
    IBOutlet UILabel *winner;
    IBOutlet UILabel *youHave;
    
    IBOutlet UILabel *topazAmount;
    IBOutlet UIImageView *topazImage;
    
}
-(IBAction)next:(id)sender;
@end
