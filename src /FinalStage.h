//
//  FinalStage.h
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface FinalStage : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *tokenCount;
    IBOutlet UILabel *completeIn;
    IBOutlet UILabel *andEarn;
    
    IBOutlet UILabel *topaz;
    
    IBOutlet UIImageView *topazImage;
    IBOutlet UIImageView *backgroundImage;
    IBOutlet UILabel *blackBck;
    IBOutlet UILabel *andLabel;
    IBOutlet UILabel *numberLabel;
    
    IBOutlet UIImageView *newTopaz;
    IBOutlet UILabel *newTopazAmount;
    
}
@property(nonatomic, retain) IBOutlet UILabel *tokenCount;
-(IBAction)start:(id)sender;
-(IBAction)back:(id)sender;
-(IBAction)buyMoreTokens:(id)sender;
-(IBAction)tutorial:(id)sender;
@end
