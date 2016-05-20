//
//  levelone.m
//  Slide Masters
//
//  Created by Blake Campbell on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "levelone.h"
#import "levelonea.h"
#import "levelselect.h"
#import "levelonecontdown.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation levelone
@synthesize bestTime, beatBlaze,theTime,andEarn, yourBestTime, play, menu, topaz, master,masterText,masterTextBox;


-(IBAction)start:(id)sender{
    [[NSUserDefaults standardUserDefaults] setObject:@"inGame" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate stopMusic];
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

    levelonecontdown *Sword = [[levelonecontdown alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

    
}
-(IBAction)back:(id)sender{
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

// Animate for first time playing
-(void) counter{
    if (step == 1) {
        time++;
        if (time == 8) {
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
            [UILabel commitAnimations];
    }
        if (time == 11) {
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
        [UILabel commitAnimations];
    }
        if (time == 14) {
        [UILabel beginAnimations:nil context:NULL];     
        [UILabel setAnimationDuration:.3];
        [UILabel setAnimationRepeatCount:1];
        [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(158.0f, 374.0f);
                andEarn.center = position;
            }
            else {
                CGPoint position = CGPointMake(158.0f, 317.0f);
                andEarn.center = position;
            }
        [UILabel commitAnimations];
            
            
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(258.0f, 378.0f);
                topaz.center = position;
            }
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        topaz.transform = CGAffineTransformMakeScale(5.0f,5.0f);
        [UIView commitAnimations];
    }
        if (time == 17) {
        topaz.hidden = FALSE;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.2];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        topaz.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        [UIView commitAnimations];
    }
        if (time == 22) {
            time = 0;
            step = 2;
        }
    }
    if (step == 2) {
        time++;
        if (time == 1) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:.5];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(69.0f, 495.0f);
                master.center = position;
            }
            else {
                CGPoint position = CGPointMake(69.0f, 411.0f);
                master.center = position;
            }
    
            [UIView commitAnimations];
        }
        if (time == 10) {
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:.3];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(218.0f, 486.0f);
                masterText.center = position;
            }
            else {
                CGPoint position = CGPointMake(218.0f, 402.0f);
                masterText.center = position;
            }
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:.3];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position1 = CGPointMake(177.0f, 486.0f);
                masterTextBox.center = position1;
            }
            else {
                CGPoint position1 = CGPointMake(177.0f, 402.0f);
                masterTextBox.center = position1;
            }
            [UIView commitAnimations];
            
            
        }
        if (time == 20) {
            [self newTimerForTip];
            [mytimer invalidate];
        }
    }        
}
//
-(void)newTimerForTip{
    [mytimer invalidate];
     timer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(masterTip) userInfo:nil repeats:YES];
    time = 0;
    step = 3;
}
-(void)masterTip{
    time++;
    if (step == 3) {
        if (time == 1) {   
            masterText.text = [NSString stringWithFormat:@"T"];
        }
        if (time == 2) {   
            masterText.text = [NSString stringWithFormat:@"Th"];
        }
        if (time == 3) {   
            masterText.text = [NSString stringWithFormat:@"Thi"];
        }
        if (time == 4) {   
            masterText.text = [NSString stringWithFormat:@"This"];
        }
        if (time == 5) {   
            masterText.text = [NSString stringWithFormat:@"This i"];
        }
        if (time == 6) {   
            masterText.text = [NSString stringWithFormat:@"This is"];
        }
        if (time == 7) {   
            masterText.text = [NSString stringWithFormat:@"This is y"];
        }
        if (time == 8) {   
            masterText.text = [NSString stringWithFormat:@"This is yo"];
        }
        if (time == 9) {   
            masterText.text = [NSString stringWithFormat:@"This is you"];
        }
        if (time == 10) {   
            masterText.text = [NSString stringWithFormat:@"This is your."];
        }
        if (time == 11) {   
            masterText.text = [NSString stringWithFormat:@"This is your f"];
        }
        if (time == 12) {   
            masterText.text = [NSString stringWithFormat:@"This is your fi"];
        }
        if (time == 13) {   
            masterText.text = [NSString stringWithFormat:@"This is your fir"];
        }
        if (time == 14) {   
            masterText.text = [NSString stringWithFormat:@"This is your firs"];
        }
        if (time == 15) {   
            masterText.text = [NSString stringWithFormat:@"This is your first"];
        }
        if (time == 16) {   
            masterText.text = [NSString stringWithFormat:@"This is your first t"];
        }
        if (time == 17) {   
            masterText.text = [NSString stringWithFormat:@"This is your first tr"];
        }
        if (time == 18) {   
            masterText.text = [NSString stringWithFormat:@"This is your first tri"];
        }
        if (time == 19) {   
            masterText.text = [NSString stringWithFormat:@"This is your first tria"];
        }
        if (time == 20) {   
            masterText.text = [NSString stringWithFormat:@"This is your first trial"];
        }
        if (time == 21) {   
            masterText.text = [NSString stringWithFormat:@"This is your first trial."];
        }
        if (time == 62) {
            step = 4;
            time = 1;
        }
    }
    if (step == 4) {
        if (time == 1) {   
            masterText.text = [NSString stringWithFormat:@"T"];
        }
        if (time == 2) {   
            masterText.text = [NSString stringWithFormat:@"Th"];
        }
        if (time == 3) {   
            masterText.text = [NSString stringWithFormat:@"The"];
        }
        if (time == 4) {   
            masterText.text = [NSString stringWithFormat:@"The c"];
        }
        if (time == 5) {   
            masterText.text = [NSString stringWithFormat:@"The ch"];
        }
        if (time == 6) {   
            masterText.text = [NSString stringWithFormat:@"The cha"];
        }
        if (time == 7) {   
            masterText.text = [NSString stringWithFormat:@"The chal"];
        }
        if (time == 8) {   
            masterText.text = [NSString stringWithFormat:@"The chall"];
        }
        if (time == 9) {   
            masterText.text = [NSString stringWithFormat:@"The challe"];
        }
        if (time == 10) {   
            masterText.text = [NSString stringWithFormat:@"The challen"];
        }
        if (time == 11) {   
            masterText.text = [NSString stringWithFormat:@"The challeng"];
        }
        if (time == 12) {   
            masterText.text = [NSString stringWithFormat:@"The challenge"];
        }
        if (time == 13) {   
            masterText.text = [NSString stringWithFormat:@"The challenges"];
        }
        if (time == 14) {   
            masterText.text = [NSString stringWithFormat:@"The challenges r"];
        }
        if (time == 15) {   
            masterText.text = [NSString stringWithFormat:@"The challenges re"];
        }
        if (time == 16) {   
            masterText.text = [NSString stringWithFormat:@"The challenges req"];
        }
        if (time == 17) {   
            masterText.text = [NSString stringWithFormat:@"The challenges requ"];
        }
        if (time == 18) {   
            masterText.text = [NSString stringWithFormat:@"The challenges requi"];
        }
        if (time == 19) {   
            masterText.text = [NSString stringWithFormat:@"The challenges requir"];
        }
        if (time == 20) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require"];
        }
        if (time == 21) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require y"];
        }
        if (time == 22) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require yo"];
        }
        if (time == 23) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you"];
        }
        if (time == 24) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you t"];
        }
        if (time == 25) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to"];
        }
        if (time == 26) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to s"];
        }
        if (time == 27) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to sl"];
        }
        if (time == 28) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to sli"];
        }
        if (time == 29) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slid"];
        }
        if (time == 30) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide"];
        }
        if (time == 31) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide a"];
        }
        if (time == 32) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as"];
        }
        if (time == 33) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as f"];
        }
        if (time == 34) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fa"];
        }
        if (time == 35) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fas"];
        }
        if (time == 36) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast"];
        }
        if (time == 37) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast a"];
        }
        if (time == 38) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as"];
        }
        if (time == 39) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as y"];
        }
        if (time == 40) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as yo"];
        }
        if (time == 41) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as you"];
        }
        if (time == 42) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as you c"];
        }
        if (time == 43) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as you ca"];
        }
        if (time == 44) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as you can"];
        }
        if (time == 45) {   
            masterText.text = [NSString stringWithFormat:@"The challenges require you to slide as fast as you can."];
        }
        if (time == 80) {
            step = 5;
            time = 0;
        }
    }
    if (step == 5) {
            if (time == 1) {   
                masterText.text = [NSString stringWithFormat:@"I"];
            }
            if (time == 2) {   
                masterText.text = [NSString stringWithFormat:@"In"];
            }
            if (time == 3) {   
                masterText.text = [NSString stringWithFormat:@"In t"];
            }
            if (time == 4) {   
                masterText.text = [NSString stringWithFormat:@"In th"];
            }
            if (time == 5) {   
                masterText.text = [NSString stringWithFormat:@"In thi"];
            }
            if (time == 6) {   
                masterText.text = [NSString stringWithFormat:@"In this"];
            }
            if (time == 7) {   
                masterText.text = [NSString stringWithFormat:@"In this c"];
            }
            if (time == 8) {   
                masterText.text = [NSString stringWithFormat:@"In this ca"];
            }
            if (time == 9) {   
                masterText.text = [NSString stringWithFormat:@"In this cas"];
            }
            if (time == 10) {   
                masterText.text = [NSString stringWithFormat:@"In this case"];
            }
            if (time == 11) {   
                masterText.text = [NSString stringWithFormat:@"In this case,"];
            }
            if (time == 12) {   
                masterText.text = [NSString stringWithFormat:@"In this case, y"];
            }
            if (time == 13) {   
                masterText.text = [NSString stringWithFormat:@"In this case, yo"];
            }
            if (time == 14) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you"];
            }
            if (time == 15) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you m"];
            }
            if (time == 16) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you mu"];
            }
            if (time == 17) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you mus"];
            }
            if (time == 18) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must"];
            }
            if (time == 19) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must b"];
            }
            if (time == 20) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must be"];
            }
            if (time == 21) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must bea"];
            }
            if (time == 22) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat"];
            }
            if (time == 23) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat B"];
            }
            if (time == 24) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Bl"];
            }
            if (time == 25) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Bla"];
            }
            if (time == 26) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaz"];
            }
            if (time == 27) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze"];
            }
            if (time == 28) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze'"];
            }
            if (time == 29) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's"];
            }
            if (time == 30) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's t"];
            }
            if (time == 31) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's ti"];
            }
            if (time == 32) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's tim"];
            }
            if (time == 33) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's time"];
            }
            if (time == 34) {   
                masterText.text = [NSString stringWithFormat:@"In this case, you must beat Blaze's time."];
            }
            if (time == 70) {
                step = 6;
                time = 0;
            }
        
    }
    if (step == 6) {
        if (time == 1) {   
            masterText.text = [NSString stringWithFormat:@"B"];
            }
        if (time == 2) {   
            masterText.text = [NSString stringWithFormat:@"Be"];
        }
        if (time == 3) {   
            masterText.text = [NSString stringWithFormat:@"Bea"];
        }
        if (time == 4) {   
            masterText.text = [NSString stringWithFormat:@"Beat"];
        }
        if (time == 5) {   
            masterText.text = [NSString stringWithFormat:@"Beat h"];
        }
        if (time == 6) {   
            masterText.text = [NSString stringWithFormat:@"Beat hi"];
        }
        if (time == 7) {   
            masterText.text = [NSString stringWithFormat:@"Beat his"];
        }
        if (time == 8) {   
            masterText.text = [NSString stringWithFormat:@"Beat his t"];
        }
        if (time == 9) {   
            masterText.text = [NSString stringWithFormat:@"Beat his ti"];
        }
        if (time == 10) {   
            masterText.text = [NSString stringWithFormat:@"Beat his tim"];
        }
        if (time == 11) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time"];
        }
        if (time == 12) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time a"];
        }
        if (time == 13) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time an"];
        }
        if (time == 14) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and"];
        }
        if (time == 15) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and y"];
        }
        if (time == 16) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and yo"];
        }
        if (time == 17) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you"];
        }
        if (time == 18) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you w"];
        }
        if (time == 19) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you wi"];
        }
        if (time == 20) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you wil"];
        }
        if (time == 21) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will"];
        }
        if (time == 22) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will b"];
        }
        if (time == 23) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be"];
        }
        if (time == 24) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be p"];
        }
        if (time == 25) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be pr"];
        }
        if (time == 26) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be pre"];
        }
        if (time == 27) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be pres"];
        }
        if (time == 28) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be prese"];
        }
        if (time == 29) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presen"];
        }
        if (time == 30) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be present"];
        }
        if (time == 31) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presente"];
        }
        if (time == 32) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented"];
        }
        if (time == 33) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a"];
        }
        if (time == 34) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a n"];
        }
        if (time == 35) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a ne"];
        }
        if (time == 36) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new"];
        }
        if (time == 37) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new c"];
        }
        if (time == 38) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new ch"];
        }
        if (time == 39) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new cha"];
        }
        if (time == 40) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new chal"];
        }
        if (time == 41) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new chall"];
        }
        if (time == 42) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new challe"];
        }
        if (time == 43) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new challen"];
        }
        if (time == 44) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new challeng"];
        }
        if (time == 45) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new challenge"];
        }
        if (time == 46) {   
            masterText.text = [NSString stringWithFormat:@"Beat his time and you will be presented a new challenge."];
        }
        if (time == 75) {
            step = 7;
            time = 0;
        }

    }
    if (step == 7) {
            if (time == 1) {   
                masterText.text = [NSString stringWithFormat:@"E"];
            }
            if (time == 2) {   
                masterText.text = [NSString stringWithFormat:@"Ea"];
            }
            if (time == 3) {   
                masterText.text = [NSString stringWithFormat:@"Eac"];
            }
            if (time == 4) {   
                masterText.text = [NSString stringWithFormat:@"Each"];
            }
            if (time == 5) {   
                masterText.text = [NSString stringWithFormat:@"Each c"];
            }
            if (time == 6) {   
                masterText.text = [NSString stringWithFormat:@"Each ch"];
            }
            if (time == 7) {   
                masterText.text = [NSString stringWithFormat:@"Each cha"];
            }
            if (time == 8) {   
                masterText.text = [NSString stringWithFormat:@"Each chal"];
            }
            if (time == 9) {   
                masterText.text = [NSString stringWithFormat:@"Each chall"];
            }
            if (time == 10) {   
                masterText.text = [NSString stringWithFormat:@"Each challe"];
            }
            if (time == 11) {   
                masterText.text = [NSString stringWithFormat:@"Each challen"];
            }
            if (time == 12) {   
                masterText.text = [NSString stringWithFormat:@"Each challeng"];
            }
            if (time == 13) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge"];
            }
            if (time == 14) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge c"];
            }
            if (time == 15) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge ca"];
            }
            if (time == 16) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can"];
            }
            if (time == 17) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can b"];
            }
            if (time == 18) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be"];
            }
            if (time == 19) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be b"];
            }
            if (time == 20) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be be"];
            }
            if (time == 21) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be bea"];
            }
            if (time == 22) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat"];
            }
            if (time == 23) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat f"];
            }
            if (time == 24) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat fo"];
            }
            if (time == 25) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for"];
            }
            if (time == 26) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for m"];
            }
            if (time == 27) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for mo"];
            }
            if (time == 28) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for mor"];
            }
            if (time == 29) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more"];
            }
            if (time == 30) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more r"];
            }
            if (time == 31) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more re"];
            }
            if (time == 32) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more re"];
            }
            if (time == 33) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rew"];
            }
            if (time == 34) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewa"];
            }
            if (time == 35) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewar"];
            }
            if (time == 36) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more reward"];
            }
            if (time == 37) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards"];
            }
            if (time == 38) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards a"];
            }
            if (time == 39) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards an"];
            }
            if (time == 40) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and"];
            }
            if (time == 41) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and m"];
            }
            if (time == 42) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and me"];
            }
            if (time == 43) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and med"];
            }
            if (time == 44) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and meda."];
            }
            if (time == 45) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and medal"];
            }
            if (time == 46) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and medals"];
            }
            if (time == 47) {   
                masterText.text = [NSString stringWithFormat:@"Each challenge can be beat for more rewards and medals."];
            }
            if (time == 90) {
                step = 8;
                time =0;
            }
       
    }
    if (step == 8) {
        if (time == 1) {   
            masterText.text = [NSString stringWithFormat:@"G"];
        }
        if (time == 2) {   
            masterText.text = [NSString stringWithFormat:@"Go"];
        }
        if (time == 3) {   
            masterText.text = [NSString stringWithFormat:@"Goo"];
        }
        if (time == 4) {   
            masterText.text = [NSString stringWithFormat:@"Good"];
        }
        if (time == 5) {   
            masterText.text = [NSString stringWithFormat:@"Good l"];
        }
        if (time == 6) {   
            masterText.text = [NSString stringWithFormat:@"Good lu"];
        }
        if (time == 7) {   
            masterText.text = [NSString stringWithFormat:@"Good luc"];
        }
        if (time == 8) {   
            masterText.text = [NSString stringWithFormat:@"Good luck"];
        }
        if (time == 9) {   
            masterText.text = [NSString stringWithFormat:@"Good luck."];
        }
        if (time == 40) {
            master.hidden = TRUE;
            masterText.hidden = TRUE;
            masterTextBox.hidden = TRUE;
            [UIButton beginAnimations:nil context:NULL];     
            [UIButton setAnimationDuration:.1];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(96.0f, 488.0f);
                menu.center = position;
            }
            else{
                CGPoint position = CGPointMake(96.0f, 406.0f);
                menu.center = position;
            }
            [UIButton commitAnimations];
            
            [UIButton beginAnimations:nil context:NULL];     
            [UIButton setAnimationDuration:.1];
            [UIButton setAnimationRepeatCount:1];
            [UIButton setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position1 = CGPointMake(223.0f, 488.0f);
                play.center = position1;
            }
            else {
                CGPoint position1 = CGPointMake(223.0f, 406.0f);
                play.center = position1;
            }
            [UIButton commitAnimations];
            [mytimer invalidate];
        }
    }
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
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
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
    
    step = 1;
    float highScore =[[NSUserDefaults standardUserDefaults] floatForKey:@"high1"];
    yourBestTime.text = [NSString stringWithFormat:@"%.2f",highScore];
    topaz.hidden = TRUE;
    [bestTime setFont:[UIFont fontWithName:@"Krona One" size:30]];
    [yourBestTime setFont:[UIFont fontWithName:@"Krona One" size:26]];
    [beatBlaze setFont:[UIFont fontWithName:@"Krona One" size:17]];
    [theTime setFont:[UIFont fontWithName:@"Krona One" size:45]];
    [andEarn setFont:[UIFont fontWithName:@"Krona One" size:25]];
    
    int term = 0;
    int first =[[NSUserDefaults standardUserDefaults] floatForKey:@"first1"];
    first = 1; // CHANGE THIS BACK IF THE PLAYER WANTS TO SEE THE POST TUTORIAL
    if (first == 0) {
        
        CGPoint position = CGPointMake(-107.0f, 226.0f);
        beatBlaze.center = position;
        CGPoint position1 = CGPointMake(-125.0f, 277.0f);
        theTime.center = position1;
        CGPoint position2 = CGPointMake(-82.0f, 317.0f);
        andEarn.center = position2;
        topaz.hidden = TRUE;
        
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate firstOne];
        
        mytimer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(counter) userInfo:nil repeats:YES];
    }
    if (first == 1) {
        CGPoint position = CGPointMake(160.0f, 226.0f);
        beatBlaze.center = position;
        CGPoint position1 = CGPointMake(160.0f, 277.0f);
        theTime.center = position1;
        CGPoint position2 = CGPointMake(158.0f, 317.0f);
        andEarn.center = position2;
        CGPoint position3 = CGPointMake(96.0f, 406.0f);
        menu.center = position3;
        CGPoint position4 = CGPointMake(223.0f, 406.0f);
        play.center = position4;
        topaz.hidden = FALSE;
        
        int medal1 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonebronze"];
        int medal2 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonesilver"];
        int medal3 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonegold"];
        
        if (medal3 == 1) {
            topaz.hidden = TRUE;
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Congratulations! You have"];
            theTime.text = [NSString stringWithFormat:@"Mastered!"];
            andEarn.text = [NSString stringWithFormat:@" this Trial"];
        }
        if (medal2 == 1 && term == 0) {
                        term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
            theTime.text = [NSString stringWithFormat:@"7 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 360"];
        }
        if (medal1 == 1 && term == 0) {
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
            theTime.text = [NSString stringWithFormat:@"12 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 240"];            
        }  
    }

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
