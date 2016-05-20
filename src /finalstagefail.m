//
//  finalstagefail.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "finalstagefail.h"
#import "FinalStage.h"
@implementation finalstagefail
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

    
    FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
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
    
    if (canSound == 0) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qMusic];
    }

    
    
    [label setFont:[UIFont fontWithName:@"Krona One" size:12]];
    [slidersLeft setFont:[UIFont fontWithName:@"Krona One" size:15]];
    
    int left =[[NSUserDefaults standardUserDefaults] integerForKey:@"slidesLeft"];
    
    slidersLeft.text = [NSString stringWithFormat:@"You had only %i slides left!", left];
    
    int cause =[[NSUserDefaults standardUserDefaults] integerForKey:@"finalCause"];
    if (cause == 0) {
        label.text = [NSString stringWithFormat:@"Touched a bad slide"];
    }
    if (cause == 1) {
        label.text = [NSString stringWithFormat:@"Out of time"];
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
