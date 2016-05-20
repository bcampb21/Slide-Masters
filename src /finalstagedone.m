//
//  finalstagedone.m
//  Slide Masters
//
//  Created by Blake Campbell on 11/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "finalstagedone.h"
#import "FinalStage.h"
#import "finalWords.h"

@implementation finalstagedone

-(IBAction)next:(id)sender{
    if (method == 1 ) {
        finalWords *Sword = [[finalWords alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO]; 
    }
    if (method == 0) {
        FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO]; 
    }
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

    
    [winner setFont:[UIFont fontWithName:@"Krona One" size:40]];
    [youHave setFont:[UIFont fontWithName:@"Krona One" size:14]];
    [topazAmount setFont:[UIFont fontWithName:@"Krona One" size:14]];
    
    
    
    int first =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstWinFinal"];
    if (first == 0) {
        topazImage.hidden = TRUE;
        topazAmount.hidden = TRUE;
        
        method = 1;
        int topaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
        
        topaz = topaz + 10000;
        [[NSUserDefaults standardUserDefaults] setInteger:topaz forKey:@"coins"];  
        [[NSUserDefaults standardUserDefaults] synchronize];

        
        int number = 1;
        
        [[NSUserDefaults standardUserDefaults] setInteger:number forKey:@"firstWinFinal"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] setInteger:number forKey:@"backgroundSevenOwn"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                              @"Congratulations!"
                                                        message:
                              @"You have received the Master Background and 10,000 Topaz!"
                              delegate
                                                               : self cancelButtonTitle:
                              @"Okay"
                                              otherButtonTitles: nil];
        [alert show];

    }
    if (first == 1) {
        int topaz =[[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
        
        topaz = topaz + 200;
        [[NSUserDefaults standardUserDefaults] setInteger:topaz forKey:@"coins"];
        [[NSUserDefaults standardUserDefaults] synchronize];
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
