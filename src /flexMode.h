//
//  flexMode.h
//  Slide Masters
//
//  Created by Blake Campbell on 2/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>
#import <AVFoundation/AVFoundation.h>

@interface flexMode : UIViewController <UIAlertViewDelegate> {
    AVAudioPlayer *audioPlayer;
    int canSound;
    //
    IBOutlet UIImageView *Level;
    IBOutlet UIImageView *Up;
    
    IBOutlet UIImageView *arrow;
    
    IBOutlet UILabel *scoreText;
    IBOutlet UILabel *comboText;
    
   
    
    IBOutlet UIImageView *roundOff;
    
    
    //Backgrounds
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
    ///Pause
    IBOutlet UILabel *gamePaused;
    IBOutlet UIButton *menu;
    IBOutlet UIButton *replayPaused;
    IBOutlet UIButton *continePlay;
 
    int pause;
    ///
    IBOutlet UIImageView *timeBox;
    //Stat Screen Command
    
    int topazEarned;
    
    IBOutlet UILabel *flexLevelLabel;
    IBOutlet UILabel *flexLeveltext;
    int step;
    int oldFlexLevel;
    
    int addTimeForStats;
    
    IBOutlet UIButton *goToMenu;
    IBOutlet UIButton *replay;
    IBOutlet UIButton *next;
    
    IBOutlet UIProgressView *expBar;
     IBOutlet UILabel *toGo;
    int currentExp;
    int maxExp;
    int flexLevel;
    int leveledUp;
    int oldExp;
    int oldMax;
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *topazLabel;
    IBOutlet UILabel *lastBarText;
   
    
    int statTime;
    int goodToGo;
    //Delay
    int delayTime;
    int hasSecondWind;
    int hadSecondWind;
    // upgrades
    int secondWindChance;
    IBOutlet UIImageView *secondWindBanner1;
    IBOutlet UIImageView *secondWindBanner2;
    int bannerCount;
    int hadSecond;
    ///Combos
    int hasCombo;
    int comboTime;
    int refreshCombo;
    int combo;
    IBOutlet UILabel *combos;
    IBOutlet UIImageView *crazyCombo;
     IBOutlet UIImageView *ultraCombo;
     IBOutlet UIImageView *unstoppableCombo; 
     IBOutlet UIImageView *comboKing;
    int canAnimate;
    int highestCombo;
    // Bad Slide
    IBOutlet UIImageView *badSlideImage;
    int badSlideVar;
    int badSlideTime;
    //// Power Up Things
    int canPowerUp;
    
    int pTime; // Time for powerUps to enter 
    IBOutlet UIImageView *freezePowerUp;
    IBOutlet UIImageView *tenPowerUp;
    IBOutlet UIImageView *doublePowerUp;
    IBOutlet UIImageView *mysteryPowerUp;
    int firstPTime;
    int secondPTime;
    int thirdPTime;
    int fourthPTime;
    int nums;
    int ran;
    int anRan; // another random :)
    float pTimeOnScreen;
    //freeze;
    IBOutlet UIImageView *freezeBeam;
    IBOutlet UIImageView *freezeIce;
    IBOutlet UIImageView *freezePrompt;
    int freezeVar;
    int freezeLag;
    int timeIsFrozen;
    int melting;
    //Plus Ten
    IBOutlet UIImageView *tenPrompt;
    int tenDelay;
    int tenOnScreen;
    //Score * 2 (doubles)
    IBOutlet UIImageView *doublePrompt;
    int hasDoubles;
    int doubleDelay;
    int doubleOnScreen;
    // Mystery pU
    int hasSphere;
    IBOutlet UIImageView *mysteryPrompt;
    int myOnScreen;
    //adding score
    IBOutlet UIImageView *scoreBack;
    int scoreAni;
    int timeLag;
    // Time keeper  
    int a;
    int time;
    int once; /// calls only once then reset
    ////
    int ouch;
    float playerTime;
    NSTimer *timer;
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *called;
    int score;
    IBOutlet UISlider *slider;
    IBOutlet UISlider *slider1;
    IBOutlet UISlider *aniSlider;
    IBOutlet UISlider *aniSlider2;
    int type; // if type is 1 (check for low) if 0 (check for high)
    int direction; // This var tells the method which method to use for the select slider(unique number)
    int directionOne;
    int directionTwo;
    int dType;
    int dType2;
    int oneSlide;
    int slidersOnScreen;
    int pattern;
    IBOutlet UILabel *timeOver;
    IBOutlet UIButton *pauseButton;
    int screenSize;
    
}
@property(nonatomic, retain) IBOutlet UISlider *slider;
@property(nonatomic, retain) IBOutlet UISlider *aniSlider;
@property(nonatomic, retain) IBOutlet UISlider *slider1;
@property(nonatomic, retain) IBOutlet UISlider *aniSlider2;

// Power ^^^
@property(nonatomic, retain) IBOutlet UIImageView *freezePowerUp;
@property(nonatomic, retain) IBOutlet UIImageView *tenPowerUp;
@property(nonatomic, retain) IBOutlet UIImageView *doublePowerUp;
@property(nonatomic, retain) IBOutlet UIImageView *mysteryPowerUp;
@property(nonatomic, retain) IBOutlet UIImageView *mysteryPrompt;
@property(nonatomic, retain) IBOutlet UIImageView *scoreBack;
@property(nonatomic, retain)IBOutlet UIImageView *freezeBeam;
@property(nonatomic, retain)IBOutlet UIImageView *freezeIce;
@property(nonatomic, retain)IBOutlet UIImageView *freezePrompt;
@property(nonatomic, retain)IBOutlet UIImageView *badSlideImage;
@property(nonatomic, retain)IBOutlet UIImageView *tenPrompt;
@property(nonatomic, retain)IBOutlet UIImageView *doublePrompt;

@property(nonatomic, retain) IBOutlet UIImageView *secondWindBanner1;
@property(nonatomic, retain) IBOutlet UIImageView *secondWindBanner2;

@property(nonatomic, retain) IBOutlet UIImageView *crazyCombo;
@property(nonatomic, retain) IBOutlet UIImageView *ultraCombo;
@property(nonatomic, retain) IBOutlet UIImageView *unstoppableCombo; 
@property(nonatomic, retain) IBOutlet UIImageView *comboKing;

@property(nonatomic, retain) IBOutlet UIImageView *timeBox;

@property(nonatomic, retain) IBOutlet UILabel *scoreLabel;
@property(nonatomic, retain) IBOutlet UILabel *topazLabel;
@property(nonatomic, retain) IBOutlet UILabel *lastBarText;
@property(nonatomic, retain) IBOutlet UIImageView *topaz;

@property(nonatomic, retain) IBOutlet UILabel *bar1;
@property(nonatomic, retain) IBOutlet UILabel *bar2;
@property(nonatomic, retain) IBOutlet UILabel *bar3;

@property(nonatomic, retain)IBOutlet UIButton *goToMenu;
@property(nonatomic, retain) IBOutlet UIButton *replay;
@property(nonatomic, retain) IBOutlet UIButton *next;

@property(nonatomic, retain)IBOutlet UILabel *gamePaused;
@property(nonatomic, retain)IBOutlet UIButton *menu;
@property(nonatomic, retain)IBOutlet UIButton *replayPaused;
@property(nonatomic, retain)IBOutlet UIButton *continePlay;

///
-(IBAction)pause:(id)sender;
-(void)badSlide;
-(void)Doubles;
-(void)addScore;
-(void)freezeTime;
-(void)addTen;
-(void)scoreMulti;
-(void)mysterySphere;

-(void)showStats;
-(void)hideThings;
-(void)showThings;

-(IBAction)replay:(id)sender;
-(IBAction)next:(id)sender;
-(IBAction)goToMenu:(id)sender;

-(IBAction)pausePlay:(id)sender;
-(IBAction)pauseMenu:(id)sender;
-(IBAction)pauseReplay:(id)sender;

-(void)submitScore;

@end
