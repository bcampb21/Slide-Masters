//
//  FinalStage.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FinalStage.h"
#import "FinalStageCountdown.h"
#import "levelselect.h"
#import "finalStageTokenStore.h"
#import "finalStageTutorial.h"

@implementation FinalStage
@synthesize tokenCount;

-(IBAction)buyMoreTokens:(id)sender{
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

    finalStageTokenStore *Sword = [[finalStageTokenStore alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO]; 
}
-(IBAction)tutorial:(id)sender{
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

    finalStageTutorial *Sword = [[finalStageTutorial alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO]; 
}

-(IBAction)start:(id)sender{
    int tokens =[[NSUserDefaults standardUserDefaults] integerForKey:@"tokens"];
    if (tokens > 0) {
    tokens = tokens - 1;
    [[NSUserDefaults standardUserDefaults] setInteger:tokens forKey:@"tokens"];
    [[NSUserDefaults standardUserDefaults] synchronize];

        if (canSound == 0) {
            
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate stopMusic];
            
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

    FinalStageCountdown *Sword = [[FinalStageCountdown alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                              @"Not enough Master Tokens!"
                                                        message:
                              @""
                              delegate
                                                               : self cancelButtonTitle:
                              @"Close"
                                              otherButtonTitles: nil];
        [alert show];
    }   
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
    
    int a = [[NSUserDefaults standardUserDefaults] integerForKey:@"tokens"];
    tokenCount.text = [NSString stringWithFormat:@"%i",a];
    [tokenCount setFont:[UIFont fontWithName:@"Krona One" size:14]];
     [completeIn setFont:[UIFont fontWithName:@"Krona One" size:13]];
     [andEarn setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [topaz setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [newTopazAmount setFont:[UIFont fontWithName:@"Krona One" size:13]];
    
    [numberLabel setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [newTopazAmount setFont:[UIFont fontWithName:@"Krona One" size:13]];
    [andLabel setFont:[UIFont fontWithName:@"Krona One" size:13]];
    
    
    
    int first =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstWinFinal"];
    if (first == 0) {
        newTopaz.hidden = TRUE;
        newTopazAmount.hidden = TRUE;
    }
    if (first == 1) {
        andLabel.hidden = TRUE;
        backgroundImage.hidden = TRUE;
        blackBck.hidden = TRUE;
        topazImage.hidden = TRUE;
        numberLabel.hidden = TRUE;
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
