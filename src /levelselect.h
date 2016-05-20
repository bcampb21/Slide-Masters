//
//  levelselect.h
//  Slide Masters
//
//  Created by Blake Campbell on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import <AVFoundation/AVFoundation.h>
@interface levelselect : UIViewController{
    
    slidemastersAppDelegate *appdelegate;
    
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    IBOutlet UILabel *topazLabel;

    IBOutlet UIButton *leveltwobutton;
    IBOutlet UIButton *levelthreebutton;
    IBOutlet UIButton *levelfourbutton;
    IBOutlet UIButton *levelfivebutton;
    IBOutlet UIButton *levelsixbutton;
    IBOutlet UIButton *levelsevenbutton;
    IBOutlet UIButton *leveleightbutton;
    IBOutlet UIButton *levelninebutton;
    IBOutlet UIButton *leveltenbutton;
    IBOutlet UIButton *ultimatechallenge;
    
    IBOutlet UIImageView *oneb;
    IBOutlet UIImageView *ones;
    IBOutlet UIImageView *oneg;
    IBOutlet UIImageView *twob;
    IBOutlet UIImageView *twos;
    IBOutlet UIImageView *twog;
    IBOutlet UIImageView *threeb;
    IBOutlet UIImageView *threes;
    IBOutlet UIImageView *threeg;
    IBOutlet UIImageView *fourb;
    IBOutlet UIImageView *fours;
    IBOutlet UIImageView *fourg;
    IBOutlet UIImageView *fiveb;
    IBOutlet UIImageView *fives;
    IBOutlet UIImageView *fiveg;
    IBOutlet UIImageView *sixb;
    IBOutlet UIImageView *sixs;
    IBOutlet UIImageView *sixg;
    IBOutlet UIImageView *sevenb;
    IBOutlet UIImageView *sevens;
    IBOutlet UIImageView *seveng;
    IBOutlet UIImageView *eightb;
    IBOutlet UIImageView *eights;
    IBOutlet UIImageView *eightg;
    IBOutlet UIImageView *nineb;
    IBOutlet UIImageView *nines;
    IBOutlet UIImageView *nineg;
    IBOutlet UIImageView *tenb;
    IBOutlet UIImageView *tens;
    IBOutlet UIImageView *teng;
    
    int medal; 
    
    
}
@property(nonatomic, retain)UIImageView *oneb;
@property(nonatomic, retain)UIImageView *ones;
@property(nonatomic, retain)UIImageView *oneg;
@property(nonatomic, retain)UIImageView *twob;
@property(nonatomic, retain)UIImageView *twos;
@property(nonatomic, retain)UIImageView *twog;
@property(nonatomic, retain)UIImageView *threeb;
@property(nonatomic, retain)UIImageView *threes;
@property(nonatomic, retain)UIImageView *threeg;
@property(nonatomic, retain)UIImageView *fourb;
@property(nonatomic, retain)UIImageView *fours;
@property(nonatomic, retain)UIImageView *fourg;
@property(nonatomic, retain)UIImageView *fiveb;
@property(nonatomic, retain)UIImageView *fives;
@property(nonatomic, retain)UIImageView *fiveg;
@property(nonatomic, retain)UIImageView *sixb;
@property(nonatomic, retain)UIImageView *sixs;
@property(nonatomic, retain)UIImageView *sixg;
@property(nonatomic, retain)UIImageView *sevenb;
@property(nonatomic, retain)UIImageView *sevens;
@property(nonatomic, retain)UIImageView *seveng;
@property(nonatomic, retain)UIImageView *eightb;
@property(nonatomic, retain)UIImageView *eights;
@property(nonatomic, retain)UIImageView *eightg;
@property(nonatomic, retain)UIImageView *nineb;
@property(nonatomic, retain)UIImageView *nines;
@property(nonatomic, retain)UIImageView *nineg;
@property(nonatomic, retain)UIImageView *tenb;
@property(nonatomic, retain)UIImageView *tens;
@property(nonatomic, retain)UIImageView *teng;





-(IBAction)back:(id)sender;

-(IBAction)levelone:(id)sender;
-(IBAction)leveltwo:(id)sender;
-(IBAction)levelthree:(id)sender;
-(IBAction)levelfour:(id)sender;
-(IBAction)levelfive:(id)sender;
-(IBAction)levelsix:(id)sender;
-(IBAction)levelseven:(id)sender;
-(IBAction)leveleight:(id)sender;
-(IBAction)levelnine:(id)sender;
-(IBAction)levelten:(id)sender;
-(IBAction)ultimatechallenge:(id)sender;
@end
