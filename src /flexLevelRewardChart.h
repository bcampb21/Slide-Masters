//
//  flexLevelRewardChart.h
//  Slide Masters
//
//  Created by Blake Campbell on 6/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexLevelRewardChart : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    IBOutlet UILabel *rewards;
    
    IBOutlet UIScrollView *scroll;
    IBOutlet UILabel *text;
    IBOutlet UILabel *text2;
    IBOutlet UILabel *text3;
    IBOutlet UILabel *text4;
    IBOutlet UILabel *text5;
    IBOutlet UILabel *text6;
    IBOutlet UILabel *text7;
    IBOutlet UILabel *text8;
    IBOutlet UILabel *text9;
    IBOutlet UILabel *text10;
    IBOutlet UILabel *text11;
}
@property(nonatomic,retain) IBOutlet UIScrollView *scroll;
-(IBAction)back:(id)sender;
@end
