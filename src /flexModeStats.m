//
//  flexModeStats.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexModeStats.h"
#import "flexModeMenu.h"
@implementation flexModeStats


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

    
    flexModeMenu *Sword = [[flexModeMenu alloc] initWithNibName:nil bundle:nil];
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
     [highestScore setFont:[UIFont fontWithName:@"Krona One" size:14]];
     [highestCombo setFont:[UIFont fontWithName:@"Krona One" size:14]];
     [secondWindsLabel setFont:[UIFont fontWithName:@"Krona One" size:14]];
     [timePlayedLabel setFont:[UIFont fontWithName:@"Krona One" size:14]];
    
    
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

    int highestS =[[NSUserDefaults standardUserDefaults] integerForKey:@"highestScore"];
    int highestC =[[NSUserDefaults standardUserDefaults] integerForKey:@"highestCombo"];
    int timeOn =[[NSUserDefaults standardUserDefaults] integerForKey:@"timePlayed"];
    int gamesPlayed =[[NSUserDefaults standardUserDefaults] integerForKey:@"gamesPlayed"];
    int totalWinds =[[NSUserDefaults standardUserDefaults] integerForKey:@"totalWinds"];
    
    if (timeOn >= 3600) {
        while (timeOn >= 3600) {
            timeOn -= 3600;
            hours++;
        }
        minutes = timeOn / 60;
        major = 1;
    }
    if (timeOn < 3600) {
        minutes = timeOn / 60;
    }
    
    highestScore.text = [NSString stringWithFormat:@"Highest Score %i",highestS];
    highestCombo.text = [NSString stringWithFormat:@"Highest Combo %i",highestC];
    secondWindsLabel.text =   [NSString stringWithFormat:@"Second Winds %i",totalWinds];
    gamesPlayedLabel.text = [NSString stringWithFormat:@"Games played %i",gamesPlayed];
    if (major == 1) {
        timePlayedLabel.text = [NSString stringWithFormat:@"Time played %i hrs %i min",hours, minutes];
    }
    if (major == 0) {
        timePlayedLabel.text = [NSString stringWithFormat:@"Time played %i minutes",minutes];
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
