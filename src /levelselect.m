//
//  levelselect.m
//  Slide Masters
//
//  Created by Blake Campbell on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "levelselect.h"
#import "levelone.h"
#import "leveltwo.h"
#import "levelthree.h"
#import "levelfour.h"
#import "levelfive.h"
#import "levelsix.h"
#import "levelseven.h"
#import "leveleight.h"
#import "levelnine.h"
#import "levelten.h"
#import "FinalStage.h"
#import "ultimateIntro.h"
#import "slidemastersViewController.h"
#import "tutorialTwo.h"

@implementation levelselect
@synthesize oneb,ones,oneg,twob,twog,twos,threeb,threeg,threes,fourb,fourg,fours,fiveb,fiveg,fives,sixb,sixg,sixs,sevenb,seveng,sevens,eightb,eightg,eights,nineb,nineg,nines,tenb,teng,tens;

-(IBAction)back:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    slidemastersViewController *Sword = [[slidemastersViewController alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}

-(IBAction)levelone:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelone *Sword = [[levelone alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}

-(IBAction)leveltwo:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    leveltwo *Sword = [[leveltwo alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}

-(IBAction)levelthree:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelthree *Sword = [[levelthree alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)levelfour:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelfour *Sword = [[levelfour alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}

-(IBAction)levelfive:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    int first =[[NSUserDefaults standardUserDefaults] floatForKey:@"first5"];
    if (first == 0) {
        tutorialTwo *Sword = [[tutorialTwo alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
    if (first == 1) {
        levelfive *Sword = [[levelfive alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
}

-(IBAction)levelsix:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelsix *Sword = [[levelsix alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];

}
-(IBAction)levelseven:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelseven *Sword = [[levelseven alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)leveleight:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    leveleight *Sword = [[leveleight alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
    
}
-(IBAction)levelnine:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelnine *Sword = [[levelnine alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)levelten:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    levelten *Sword = [[levelten alloc] initWithNibName:nil bundle:nil];
    [self presentModalViewController:Sword animated:NO];
}
-(IBAction)ultimatechallenge:(id)sender{
    if (canSound == 0) {
        [audioPlayer stop];
        [audioPlayer play];
    }
    
    int a =[[NSUserDefaults standardUserDefaults] integerForKey:@"firstFinal"];
    if (a == 1) {
        FinalStage *Sword = [[FinalStage alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }
    if (a == 0) {
        int hey = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:hey forKey:@"firstFinal"];  
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        ultimateIntro *Sword = [[ultimateIntro alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
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
    
    [[NSUserDefaults standardUserDefaults] setObject:@"levelSelect" forKey:@"location"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];

        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/swishSound.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        audioPlayer.numberOfLoops = 0;
        if (audioPlayer == nil)
            NSLog(@"not working");
        else
            audioPlayer.currentTime = 0;
  
    
    [topazLabel setFont:[UIFont fontWithName:@"Krona One" size:14]];
    
    [super viewDidLoad];
    oneb.hidden = TRUE;
    ones.hidden = TRUE;
    oneg.hidden = TRUE;
    twob.hidden = TRUE;
    twos.hidden = TRUE;
    twog.hidden = TRUE;
    threeb.hidden = TRUE;
    threes.hidden = TRUE;
    threeg.hidden = TRUE;
    fourb.hidden = TRUE;
    fours.hidden = TRUE;
    fourg.hidden = TRUE;
    fiveb.hidden = TRUE;
    fives.hidden = TRUE;
    fiveg.hidden = TRUE;
    sixb.hidden = TRUE;
    sixs.hidden = TRUE;
    sixg.hidden = TRUE;
    sevenb.hidden = TRUE;
    sevens.hidden = TRUE;
    seveng.hidden = TRUE;
    eightb.hidden = TRUE;
    eights.hidden = TRUE;
    eightg.hidden = TRUE;
    nineb.hidden = TRUE;
    nines.hidden = TRUE;
    nineg.hidden = TRUE;
    tenb.hidden = TRUE;
    tens.hidden = TRUE;
    teng.hidden = TRUE;
    
    
    ///
    
    int place =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelonepass"];
    if(place ==0){
        leveltwobutton.hidden=TRUE;
    }
    ////
    int place1 =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveltwopass"];
    if(place1 ==0){
        levelthreebutton.hidden=TRUE;
    }
    int place2 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelthreepass"];
    if(place2 ==0){
        levelfourbutton.hidden=TRUE;
    }
    int place3 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelfourpass"];
    if(place3 ==0){
        levelfivebutton.hidden=TRUE;
    }
    int place4 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelfivepass"];
    if(place4 ==0){
        levelsixbutton.hidden=TRUE;
    }

    int place5 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelsixpass"];
    if(place5 ==0){
        levelsevenbutton.hidden=TRUE;
    }

    int place6 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelsevenpass"];
    if(place6 ==0){
        leveleightbutton.hidden=TRUE;
    }

    int place7 =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveleightpass"];
    if(place7 ==0){
        levelninebutton.hidden=TRUE;
    }
    int place8 =[[NSUserDefaults standardUserDefaults] floatForKey:@"levelninepass"];
    if(place8 ==0){
        leveltenbutton.hidden=TRUE;
    }
    int place9 =[[NSUserDefaults standardUserDefaults] floatForKey:@"leveltenpass"];
    if(place9 ==0){
        ultimatechallenge.hidden=TRUE;
    }
///////// Enter the medal check here:
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonebronze"];
    if (medal == 1) {
        oneb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonesilver"];
    if (medal == 1) {
        ones.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelonegold"];
    if (medal == 1) {
        oneg.hidden = FALSE;
    }
   //// 
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwobronze"];
    if (medal == 1) {
        twob.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwosilver"];
    if (medal == 1) {
        twos.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltwogold"];
    if (medal == 1) {
        twog.hidden = FALSE;
    }
   //////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreebronze"];
    if (medal == 1) {
        threeb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreesilver"];
    if (medal == 1) {
        threes.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelthreegold"];
    if (medal == 1) {
        threeg.hidden = FALSE;
    }
//////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfourbronze"];
    if (medal == 1) {
        fourb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfoursilver"];
    if (medal == 1) {
        fours.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfourgold"];
    if (medal == 1) {
        fourg.hidden = FALSE;
    }
////////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfivebronze"];
    if (medal == 1) {
        fiveb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfivesilver"];
    if (medal == 1) {
        fives.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelfivegold"];
    if (medal == 1) {
        fiveg.hidden = FALSE;
    }
//////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsixbronze"];
    if (medal == 1) {
        sixb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsixsilver"];
    if (medal == 1) {
        sixs.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsixgold"];
    if (medal == 1) {
        sixg.hidden = FALSE;
    }
//////
    
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsevenbronze"];
    if (medal == 1) {
        sevenb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsevensilver"];
    if (medal == 1) {
        sevens.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelsevengold"];
    if (medal == 1) {
        seveng.hidden = FALSE;
    }
//////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveleightbronze"];
    if (medal == 1) {
        eightb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveleightsilver"];
    if (medal == 1) {
        eights.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveleightgold"];
    if (medal == 1) {
        eightg.hidden = FALSE;
    }
//////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelninebronze"];
    if (medal == 1) {
        nineb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelninesilver"];
    if (medal == 1) {
        nines.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"levelninegold"];
    if (medal == 1) {
        nineg.hidden = FALSE;
    }
///////
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltenbronze"];
    if (medal == 1) {
        tenb.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltensilver"];
    if (medal == 1) {
        tens.hidden = FALSE;
    }
    medal =[[NSUserDefaults standardUserDefaults] integerForKey:@"leveltengold"];
    if (medal == 1) {
        teng.hidden = FALSE;
    }

///////
    int moneys = [[NSUserDefaults standardUserDefaults] integerForKey:@"coins"];
    topazLabel.text = [NSString stringWithFormat:@"%i",moneys];
    
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
