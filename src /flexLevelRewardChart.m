//
//  flexLevelRewardChart.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "flexLevelRewardChart.h"
#import "flexModeMenu.h"
@implementation flexLevelRewardChart
@synthesize scroll;

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
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    [rewards setFont:[UIFont fontWithName:@"Krona One" size:18]];
    
    [text setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text2 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text3 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text4 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text5 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text6 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text7 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text8 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text9 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text10 setFont:[UIFont fontWithName:@"Krona One" size:11]];
    [text11 setFont:[UIFont fontWithName:@"Krona One" size:11]];
  
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(320,625)];
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
