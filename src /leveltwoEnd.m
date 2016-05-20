//
//  leveltwoEnd.m
//  Slide Masters
//
//  Created by Blake Campbell on 4/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "leveltwoEnd.h"
#import "leveltwo.h"
#import "leveltwocountdown.h"
#import "levelselect.h"
#import "levelthree.h"
#import "showUnlockFlexMode.h"
#import <GameKit/GameKit.h>
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation leveltwoEnd

@synthesize bronze;
@synthesize silver;
@synthesize gold, beatBlaze, andEarn, theTime,challenge,complete,next,replay,menu,topazBorder,myTopaz,potBorder,topaz1, topaz2, topaz3, topaz4,oTopaz;

-(IBAction)menuNot:(id)sender{
    [self menu:(id)sender];
}
-(IBAction)replayNot:(id)sender{
    [self replay:(id)sender];
}


-(IBAction)menu:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    levelselect *Sword = [[levelselect alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)replay:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    leveltwocountdown *Sword = [[leveltwocountdown alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)next:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
        [audioPlayer play];
    }

    levelthree *Sword = [[levelthree alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(void)counter{
    if (step == 1) {
        time++;
        if (time == 3) {
            timelabel.hidden = TRUE;
        }
        if (time == 6) {
            timelabel.hidden = FALSE;
            time = 0;
            count++;
            if (count == 3) {
                if (didGetMedal == 1) {
                    step = 2;
                }
                if (didGetMedal == 0) {
                    time = 0;
                    [mytimer invalidate];
                    
                }
                
            }
        }
    } // flash time
    if (step == 2) {
        time++;
        if (time == 1)  {
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position = CGPointMake(160.0f, 139.0f);
            challenge.center = position;
            [UIView commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position1 = CGPointMake(160.0f, 262.0f);
            complete.center = position1;
            [UIView commitAnimations];
        }
        if (time == 35) {
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position = CGPointMake(503.0f, 139.0f);
            challenge.center = position;
            [UIView commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position1 = CGPointMake(-183.0f, 262.0f);
            complete.center = position1;
            [UIView commitAnimations];
        }
        if (time == 42) {
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(114.0f, 542.0f);
                topazBorder.center = position;
            }
            else{
                CGPoint position = CGPointMake(114.0f, 453.0f);
                topazBorder.center = position;
            }
            [UIView commitAnimations];
            
            myTopaz.text = [NSString stringWithFormat:@"%i",coinCount];
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:1];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint position1 = CGPointMake(171.0f, 540.0f);
                myTopaz.center = position1;
            }
            else{
                CGPoint position1 = CGPointMake(171.0f, 454.0f);
                myTopaz.center = position1;
            }
            
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position2 = CGPointMake(160.0f, 542.0f);
                potBorder.center = position2;
            }
            else{
                CGPoint position2 = CGPointMake(160.0f, 454.0f);
                potBorder.center = position2;
            }
            [UIView commitAnimations];
        }
        if (time == 52) {
            step = 3;
            time = 0;
        }
        
    }
    if (step == 3) {
        time++;
        coinUp+=20;
        if (coinCount < coinCountAfter) {
            coinCount+=20;
            
            myTopaz.text = [NSString stringWithFormat:@"%i",coinCount];
        }
        if (time == 1) {
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(256.0f, 378.0f);
                topaz1.center = positiona;
            }
            else{
                CGPoint positiona = CGPointMake(256.0f, 322.0f);
                topaz1.center = positiona;
            }
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.4];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(114.0f, 542.0f);
                topaz1.center = positiona;
            }
            else{
                CGPoint position = CGPointMake(114.0f, 454.0f);
                topaz1.center = position;
            }
            [UIView commitAnimations];
        }
        if (time == 2) {
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(256.0f, 378.0f);
                topaz2.center = positiona;
            }
            else{
                CGPoint positiona = CGPointMake(256.0f, 322.0f);
                topaz2.center = positiona;
            }
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.4];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(114.0f, 542.0f);
                topaz2.center = positiona;
            }
            else{
                CGPoint position = CGPointMake(114.0f, 454.0f);
                topaz2.center = position;
            }
            [UIView commitAnimations];
        }
        if (time == 3) {
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(256.0f, 378.0f);
                topaz3.center = positiona;
            }
            else{
                CGPoint positiona = CGPointMake(256.0f, 322.0f);
                topaz3.center = positiona;
            }
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.4];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(114.0f, 542.0f);
                topaz3.center = positiona;
            }
            else{
                CGPoint position = CGPointMake(114.0f, 454.0f);
                topaz3.center = position;
            }
            [UIView commitAnimations];
        }
        if (time == 4) {
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(256.0f, 378.0f);
                topaz4.center = positiona;
            }
            else{
                CGPoint positiona = CGPointMake(256.0f, 322.0f);
                topaz4.center = positiona;
            }
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:.4];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            if (IS_WIDESCREEN) {
                CGPoint positiona = CGPointMake(114.0f, 542.0f);
                topaz4.center = positiona;
            }
            else{
                CGPoint position = CGPointMake(114.0f, 454.0f);
                topaz4.center = position;
            }
            [UIView commitAnimations];
        }
        if (time == 4 && coinUp < coinAdding) {
            time = 0;
        }
        if (time == 5) {
            time = 0;
            step = 4;
        }
        
    }// coin add
    if (step == 4) {
        time++;
        if (time == 10) {
            topaz1.hidden = TRUE;
            topaz2.hidden = TRUE;
            topaz3.hidden = TRUE;
            topaz4.hidden = TRUE;
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position = CGPointMake(114.0f, 650.0f);
            topazBorder.center = position;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:1];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            
            CGPoint position1 = CGPointMake(171.0f, 650.0f);
            myTopaz.center = position1;
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position2 = CGPointMake(160.0f, 650.0f);
            potBorder.center = position2;
            [UIView commitAnimations];
        }
        if (time == 18) {
            step = 6;
            time = 0;
        }
    }    
    if (step == 6) {
        time++;
        if (time == 1) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(445.0f, 266.0f);
                beatBlaze.center = position;
            }
            else{
                CGPoint position = CGPointMake(445.0f, 226.0f);
                beatBlaze.center = position;
            }
            [UIButton commitAnimations];
        }
        if (time == 4) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(444.0f, 326.0f);
                theTime.center = position;
            }
            else{
                CGPoint position = CGPointMake(444.0f, 277.0f);
                theTime.center = position;
            }
            [UIButton commitAnimations];
        }
        if (time == 7) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(442.0f, 374.0f);
                andEarn.center = position;
            }
            else{
                CGPoint position = CGPointMake(442.0f, 317.0f);
                andEarn.center = position;
            }
            [UIButton commitAnimations];
            oTopaz.hidden = TRUE;
        }
        if (time == 12) {
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(-107.0f, 266.0f);
                beatBlaze.center = position;
                CGPoint position1 = CGPointMake(-125.0f, 325.0f);
                theTime.center = position1;
                CGPoint position2 = CGPointMake(-82.0f, 374.0f);
                andEarn.center = position2;
            }
            else {
                CGPoint position = CGPointMake(-107.0f, 226.0f);
                beatBlaze.center = position;
                CGPoint position1 = CGPointMake(-125.0f, 277.0f);
                theTime.center = position1;
                CGPoint position2 = CGPointMake(-82.0f, 317.0f);
                andEarn.center = position2;
            }
        }
        if (time == 13) {
            [self changeText];
        }
        if (time == 14) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(160.0f, 266.0f);
                beatBlaze.center = position;
            }
            else{
                CGPoint position = CGPointMake(160.0f, 226.0f);
                beatBlaze.center = position;
            }
            [UIButton commitAnimations];
        }
        if (time == 17) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(160.0f, 326.0f);
                theTime.center = position;
            }
            else{
                CGPoint position = CGPointMake(160.0f, 277.0f);
                theTime.center = position;
            }
            
            [UIButton commitAnimations];
        }
        if (time == 20) {
            [UILabel beginAnimations:nil context:NULL];
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(158.0f, 374.0f);
                andEarn.center = position;
            }
            else{
                CGPoint position = CGPointMake(158.0f, 317.0f);
                andEarn.center = position;
            }
            
            [UIButton commitAnimations];
            if (whatChallenge != 3){
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:.3];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                oTopaz.transform = CGAffineTransformMakeScale(5.0f,5.0f);
                [UIButton commitAnimations];
            }
        }
        if (time == 23) {
            if (whatChallenge != 3){
                oTopaz.hidden = FALSE;
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:.2];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                oTopaz.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
                [UIView commitAnimations];
            }
        }
        if (time == 26) {
            int yo =[[NSUserDefaults standardUserDefaults] integerForKey:@"flexIsUnlocked"];
            if (yo == 1) {
            [UIButton beginAnimations:nil context:NULL];
            [UIButton setAnimationDuration:.2];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(76.0f, 488.0f);
                menu.center = position;
            }
            else{
                CGPoint position = CGPointMake(76.0f, 410.0f);
                menu.center = position;
            }
            [UIButton commitAnimations];
            
            [UIButton beginAnimations:nil context:NULL];
            [UIButton setAnimationDuration:.2];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position1 = CGPointMake(160.0f, 488.0f);
                replay.center = position1;
            }
            else{
                CGPoint position1 = CGPointMake(160.0f, 410.0f);
                replay.center = position1;
            }
            [UIButton commitAnimations];
            
            [UIButton beginAnimations:nil context:NULL];
            [UIButton setAnimationDuration:.2];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position2 = CGPointMake(245.0f, 488.0f);
                next.center = position2;
            }
            else{
                CGPoint position2 = CGPointMake(245.0f, 410.0f);
                next.center = position2;
            }
            [UIButton commitAnimations];
            [mytimer invalidate];
            }
            if (yo != 1) {
                step = 7;
                time = 0;
            }
            time = 0;
            
        }
        
    } // new challenge in // new challenge in    
    if (step == 7) {
        time++;
        if (time == 20) {
            [mytimer invalidate];
            showUnlockFlexMode *Sword = [[showUnlockFlexMode alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO];
        }
    }
    
}
-(void)changeText{
    if (whatChallenge == 1) {
        beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
        theTime.text = [NSString stringWithFormat:@"9 SECONDS"];
        andEarn.text = [NSString stringWithFormat:@"and earn 286"];
    }
    if (whatChallenge == 2) {
        beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
        theTime.text = [NSString stringWithFormat:@"6.5 SECONDS"];
        andEarn.text = [NSString stringWithFormat:@"and earn 416"];
    }
    if (whatChallenge == 3) {
        beatBlaze.text = [NSString stringWithFormat:@"Congratulations! You have"];
        theTime.text = [NSString stringWithFormat:@"Mastered!"];
        andEarn.text = [NSString stringWithFormat:@" this Trial"];
    }
    
}
-(void)submitScore{ 
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"f234f23"];
    scoreReporter.value = current *100.0f;
    scoreReporter.context = 0;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error){
        if (error != nil) {
            NSLog(@"Submitting a Score Failed");
        }
        else{
            NSLog(@"Submitting a Score Succeeded!!!");
        }
    }];
}
-(IBAction)showLeaderboard:(id)sender{
    GKLeaderboardViewController *leaderboardController = [[GKLeaderboardViewController alloc] init];
    if (leaderboardController != nil)
    {  
        leaderboardController.leaderboardDelegate = self;
        leaderboardController.timeScope = GKLeaderboardTimeScopeToday;
        leaderboardController.category = @"f234f23";
        [self presentViewController: leaderboardController animated: YES completion:nil];
    } 
    
}
- (void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSUserDefaults standardUserDefaults] setObject:@"levelSelect" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [myTopaz setFont:[UIFont fontWithName:@"Krona One" size:14]];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    if (canSound == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qMusic];
    }

    
     newBestTime.hidden = TRUE;
    
    backgroundOriginal.hidden = TRUE;
    backgroundOne.hidden = TRUE;
    backgroundTwo.hidden = TRUE;
    backgroundThree.hidden = TRUE;
    backgroundFour.hidden = TRUE;
    backgroundFive.hidden = TRUE;
    backgroundSix.hidden = TRUE;
    backgroundSeven.hidden = TRUE;
    backgroundEight.hidden = TRUE;
    backgroundNine.hidden = TRUE;
    backgroundTen.hidden = TRUE;
    
    int choice =[[NSUserDefaults standardUserDefaults] integerForKey:@"backgroundSelected"];
    if (choice == 0) {
        backgroundOriginal.hidden = FALSE;
    }
    if (choice == 1) {
        backgroundOne.hidden = FALSE;
    }
    if (choice == 2) {
        backgroundTwo.hidden = FALSE;
    }
    if (choice == 3) {
        backgroundThree.hidden = FALSE;
    }
    if (choice == 4) {
        backgroundFour.hidden = FALSE;
    }
    if (choice == 5) {
        backgroundFive.hidden = FALSE;
    }
    if (choice == 6) {
        backgroundSix.hidden = FALSE;
    }
    if (choice == 7) {
        backgroundSeven.hidden = FALSE;
    }
    if (choice == 8) {
        backgroundEight.hidden = FALSE;
    }
    if (choice == 9) {
        backgroundNine.hidden = FALSE;
    }
    if (choice == 10) {
        backgroundTen.hidden = FALSE;
    }

    
    coinCount =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
    step = 1;
    timelabel.hidden = TRUE;
    
        mytimer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(counter) userInfo:nil repeats:YES];
    CGPoint position = CGPointMake(160.0f, 226.0f);
    beatBlaze.center = position;
    CGPoint position1 = CGPointMake(160.0f, 277.0f);
    theTime.center = position1;
    CGPoint position2 = CGPointMake(158.0f, 317.0f);
    andEarn.center = position2;
    
    current =[[NSUserDefaults standardUserDefaults] floatForKey:@"current2"];
    int didGetBetter =[[NSUserDefaults standardUserDefaults] floatForKey:@"gotBetterTime"];
    
    if (didGetBetter == 1) {
        [self submitScore];
        newBestTime.hidden = FALSE;
    }

    timelabel.text = [NSString stringWithFormat:@"%.2f", current];
    [timelabel setFont:[UIFont fontWithName:@"Krona One" size:30]];
    [beatBlaze setFont:[UIFont fontWithName:@"Krona One" size:17]];
    [theTime setFont:[UIFont fontWithName:@"Krona One" size:45]];
    [andEarn setFont:[UIFont fontWithName:@"Krona One" size:25]];    
    bronze.hidden = YES;
    silver.hidden = YES;
    gold.hidden = YES;
    
        int term = 0;
        int medalb =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwobronze"];
        int medals =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwosilver"];
        int medalg =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwogold"];
        
        if (medalg == 1) {
            oTopaz.hidden = TRUE;
            topaz1.hidden = TRUE;
            topaz2.hidden = TRUE;
            topaz3.hidden = TRUE;
            topaz4.hidden = TRUE;
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Congratulations! You have"];
            theTime.text = [NSString stringWithFormat:@"Mastered!"];
            andEarn.text = [NSString stringWithFormat:@" this Trial"];
        }
        if (medals == 1 && term == 0) {
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
            theTime.text = [NSString stringWithFormat:@"6.5 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 416"];
        }
        if (medalb == 1 && term == 0) {
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
            theTime.text = [NSString stringWithFormat:@"9 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 286"];
            
        }
  
    didGetMedal = 0;
    whichShow = 0; //  reset
    int medal1 =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwobronze"];
    if (current < 12.5) {
        bronze.hidden= NO;
        if (medal1 ==0) {
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            if (didGetMedal == 0 && whichShow == 0) {
                whichShow = 1;
            }
            didGetMedal = 1;
            [appDelegate leveltwobronzereward];
            [appDelegate leveltwobronze];
            whatChallenge = 1;
        }
    }
    
    int medal2 =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwosilver"];
    if (current < 9) {
        silver.hidden= NO;
        if (medal2 ==0) {
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            if (didGetMedal == 0 && whichShow == 0) {
                whichShow = 2;
            }
            didGetMedal = 1;
            [appDelegate leveltwosilverreward];
            [appDelegate leveltwosilver];
            whatChallenge = 2;
        }
    }
    
    int medal3 =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwogold"];
    if (current < 6.5) {
        gold.hidden= NO;
        if (medal3 ==0) {
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            if (didGetMedal == 0 && whichShow == 0) {
                whichShow = 3;
            }
            didGetMedal = 1;
            [appDelegate leveltwogoldreward];
            [appDelegate leveltwogold];
            whatChallenge = 3;
            int allGold =[[NSUserDefaults standardUserDefaults] floatForKey:@"allGold"];
            if (allGold == 0) {
                int one =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelonegold"];
                int two =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveltwogold"];
                int three =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelthreegold"];
                int four =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelfourgold"];
                int five =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelfivegold"];
                int six =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelsixgold"];
                int seven =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelsevengold"];
                int eight =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveleightgold"];
                int nine =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelninegold"];
                int ten =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveltengold"];
                int hasAll = 0;
                if (one == 1) {
                    hasAll++;
                }
                if (two == 1) {
                    hasAll++;
                }
                if (three == 1) {
                    hasAll++;
                }
                if (four == 1) {
                    hasAll++;
                }
                if (five == 1) {
                    hasAll++;
                }
                if (six == 1) {
                    hasAll++;
                }
                if (seven == 1) {
                    hasAll++;
                }
                if (eight == 1) {
                    hasAll++;
                }
                if (nine == 1) {
                    hasAll++;
                }
                if (ten == 1) {
                    hasAll++;
                }
                if (hasAll == 10) {
                    int nice = 1;
                    [[NSUserDefaults standardUserDefaults] setInteger:nice forKey:@"allGold"];  
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] setInteger:nice forKey:@"backgroundFiveOwn"];  
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Background Unlocked!" 
                                                                    message:@"Gold medal achieved on every level!" 
                                                                   delegate:nil 
                                                          cancelButtonTitle:@"OK"
                                                          otherButtonTitles:nil];
                    [alert show];
                }
            }

        }
    }
    if (didGetMedal == 0) {
        if (medal1 == 1) {
            CGPoint position = CGPointMake(76.0f, 410.0f);
            menu.center = position;
            CGPoint position1 = CGPointMake(160.0f, 410.0f);
            replay.center = position1;
            CGPoint position2 = CGPointMake(245.0f, 410.0f);
            next.center = position2;
        }
        if (medal1 == 0) {
            CGPoint position = CGPointMake(96.0f, 406.0f);
            nCMenu.center = position;
            CGPoint position1 = CGPointMake(224.0f, 406.0f);
            nCreplay.center = position1;
        }
    }
    coinCountAfter =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
    coinAdding = coinCountAfter - coinCount;


    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
