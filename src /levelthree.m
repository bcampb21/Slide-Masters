//
//  levelthree.m
//  Slide Masters
//
//  Created by Blake Campbell on 4/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "levelthree.h"
#import "levelthreea.h"
#import "levelthreecountdown.h"
#import "levelselect.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation levelthree
@synthesize bestTime, beatBlaze,theTime,andEarn, yourBestTime, play, menu, topaz;

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

    levelthreecountdown *Sword = [[levelthreecountdown alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}

-(void)counter{
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
    if (time == 27) {
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
    float highScore =[[NSUserDefaults standardUserDefaults] floatForKey:@"high3"];
    yourBestTime.text = [NSString stringWithFormat:@"%.2f",highScore];
    topaz.hidden = TRUE;
    [bestTime setFont:[UIFont fontWithName:@"Krona One" size:30]];
    [yourBestTime setFont:[UIFont fontWithName:@"Krona One" size:26]];
    [beatBlaze setFont:[UIFont fontWithName:@"Krona One" size:17]];
    [theTime setFont:[UIFont fontWithName:@"Krona One" size:45]];
    [andEarn setFont:[UIFont fontWithName:@"Krona One" size:25]];
    
    int term = 0;
    int first =[[NSUserDefaults standardUserDefaults] floatForKey:@"first3"];
    
    if (first == 0) {
        CGPoint position = CGPointMake(-107.0f, 226.0f);
        beatBlaze.center = position;
        CGPoint position1 = CGPointMake(-125.0f, 277.0f);
        theTime.center = position1;
        CGPoint position2 = CGPointMake(-82.0f, 317.0f);
        andEarn.center = position2;
        topaz.hidden = TRUE;
        
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate firstThree];
        
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
        
        int medal1 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreebronze"];
        int medal2 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreesilver"];
        int medal3 =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreegold"];
        
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
            theTime.text = [NSString stringWithFormat:@"8 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 448"];

        }
        if (medal1 == 1 && term == 0) {
            
            term = 1;
            beatBlaze.text = [NSString stringWithFormat:@"Complete in under"];
            theTime.text = [NSString stringWithFormat:@"9.7 SECONDS"];
            andEarn.text = [NSString stringWithFormat:@"and earn 308"];         
            
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
