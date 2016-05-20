//
//  theslideshop.h
//  Slide Masters
//
//  Created by Blake Campbell on 7/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "slidemastersAppDelegate.h"
#import "INAPStore.h"
#import <AVFoundation/AVFoundation.h>

@interface theslideshop : UIViewController{
    AVAudioPlayer *audioPlayer;
    int canSound;
    
    slidemastersAppDelegate *appdelegate;
    
    IBOutlet UILabel *howToLabel;
    IBOutlet UIImageView *checkMark;
    
    IBOutlet UIScrollView *shopview;
    IBOutlet UIButton *selectButton;
    IBOutlet UIButton *buyButton;
    
    IBOutlet UILabel *titleSlider;
    IBOutlet UILabel *description;
    IBOutlet UILabel *cost;
    
     IBOutlet UILabel *selectedLabel;
    
    IBOutlet UILabel *playerBank;
    
     IBOutlet UIImageView *defaultPic;
     IBOutlet UIImageView *alienPic;
     IBOutlet UIImageView *bunnyPic;
     IBOutlet UIImageView *dragonPic;
     IBOutlet UIImageView *ghostPic;
     IBOutlet UIImageView *goldPic;
     IBOutlet UIImageView *ninjaPic;
     IBOutlet UIImageView *rocketPic;
     IBOutlet UIImageView *unicornPic;
     IBOutlet UIImageView *icePic;
     IBOutlet UIImageView *metalPic;
     IBOutlet UIImageView *britishPic; 
    
    
    IBOutlet UIImageView *originaBackground;
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
    
    //Own
    IBOutlet UIImageView *defaultPicOwn;
    IBOutlet UIImageView *alienPicOwn;
    IBOutlet UIImageView *bunnyPicOwn;
    IBOutlet UIImageView *dragonPicOwn;
    IBOutlet UIImageView *ghostPicOwn;
    IBOutlet UIImageView *goldPicOwn;
    IBOutlet UIImageView *ninjaPicOwn;
    IBOutlet UIImageView *rocketPicOwn;
    IBOutlet UIImageView *unicornPicOwn;
    IBOutlet UIImageView *icePicOwn;
    IBOutlet UIImageView *metalPicOwn;
    IBOutlet UIImageView *britishPicOwn; 
    
    
    IBOutlet UIImageView *originaBackgroundOwn;
    IBOutlet UIImageView *backgroundOneOwn;
    IBOutlet UIImageView *backgroundTwoOwn;
    IBOutlet UIImageView *backgroundThreeOwn;
    IBOutlet UIImageView *backgroundFourOwn;
    IBOutlet UIImageView *backgroundFiveOwn;
    IBOutlet UIImageView *backgroundSixOwn;
    IBOutlet UIImageView *backgroundSevenOwn;
    IBOutlet UIImageView *backgroundEightOwn;
    IBOutlet UIImageView *backgroundNineOwn;
    IBOutlet UIImageView *backgroundTenOwn;
    
    //Using
    IBOutlet UIImageView *defaultPicUsing;
    IBOutlet UIImageView *alienPicUsing;
    IBOutlet UIImageView *bunnyPicUsing;
    IBOutlet UIImageView *dragonPicUsing;
    IBOutlet UIImageView *ghostPicUsing;
    IBOutlet UIImageView *goldPicUsing;
    IBOutlet UIImageView *ninjaPicUsing;
    IBOutlet UIImageView *rocketPicUsing;
    IBOutlet UIImageView *unicornPicUsing;
    IBOutlet UIImageView *icePicUsing;
    IBOutlet UIImageView *metalPicUsing;
    IBOutlet UIImageView *britishPicUsing; 
    
    
    IBOutlet UIImageView *originaBackgroundUsing;
    IBOutlet UIImageView *backgroundOneUsing;
    IBOutlet UIImageView *backgroundTwoUsing;
    IBOutlet UIImageView *backgroundThreeUsing;
    IBOutlet UIImageView *backgroundFourUsing;
    IBOutlet UIImageView *backgroundFiveUsing;
    IBOutlet UIImageView *backgroundSixUsing;
    IBOutlet UIImageView *backgroundSevenUsing;
    IBOutlet UIImageView *backgroundEightUsing;
    IBOutlet UIImageView *backgroundNineUsing;
    IBOutlet UIImageView *backgroundTenUsing;
    
    
    IBOutlet UIImageView *topazPic;
    
    
    int index;
    int backIndex;
    int gotTopaz;
   
}
@property(nonatomic,retain) IBOutlet UIButton *selectButton;
@property(nonatomic,retain) IBOutlet UIButton *buyButton;
@property(nonatomic,retain) IBOutlet UIScrollView *shopview;
@property(nonatomic,retain)  IBOutlet UIImageView *alienPic;
@property(nonatomic,retain)  IBOutlet UIImageView *bunnyPic;
@property(nonatomic,retain)  IBOutlet UIImageView *dragonPic;
@property(nonatomic,retain)  IBOutlet UIImageView *ghostPic;

@property(nonatomic,retain)   IBOutlet UIImageView *goldPic;

@property(nonatomic,retain) IBOutlet UIImageView *ninjaPic;
@property(nonatomic,retain) IBOutlet UIImageView *rocketPic;
@property(nonatomic,retain) IBOutlet UIImageView *unicornPic;
@property(nonatomic,retain) IBOutlet UIImageView *icePic;
@property(nonatomic,retain) IBOutlet UIImageView *metalPic;
@property(nonatomic,retain) IBOutlet UIImageView *britishPic;
@property(nonatomic,retain)  IBOutlet UIImageView *defaultPic;

@property(nonatomic,retain) IBOutlet UILabel *titleSlider;
@property(nonatomic,retain) IBOutlet UILabel *description;
@property(nonatomic,retain)  IBOutlet UILabel *cost;

-(IBAction)back:(id)sender;
-(IBAction)IAPstore:(id)sender;

-(IBAction)selectItem:(id)sender;
-(IBAction)buyItem:(id)sender;

-(IBAction)defaultSlider:(id)sender;//o
-(IBAction)alien:(id)sender;//1
-(IBAction)bunny:(id)sender;//2
-(IBAction)dragon:(id)sender;//3
-(IBAction)ghost:(id)sender;//4
-(IBAction)gold:(id)sender;//5
-(IBAction)ninja:(id)sender;//6
-(IBAction)rocket:(id)sender;//7
-(IBAction)unicorn:(id)sender;//8
-(IBAction)ice:(id)sender;//9
-(IBAction)metal:(id)sender;//10
-(IBAction)british:(id)sender;//11

-(IBAction)backgroundOriginal:(id)sender;
-(IBAction)backgroundOne:(id)sender;
-(IBAction)backgroundTwo:(id)sender;
-(IBAction)backgroundThree:(id)sender;
-(IBAction)backgroundFour:(id)sender;
-(IBAction)backgroundFive:(id)sender;
-(IBAction)backgroundSix:(id)sender;
-(IBAction)backgroundSeven:(id)sender;
-(IBAction)backgroundEight:(id)sender;
-(IBAction)backgroundNine:(id)sender;
-(IBAction)backgroundTen:(id)sender;

-(void)ownIt;
-(void)usingIt;


@end
