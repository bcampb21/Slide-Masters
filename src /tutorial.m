//
//  tutorial.m
//  Slide Masters
//
//  Created by Blake Campbell on 1/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "tutorial.h"
#import "tutslide.h"
@implementation tutorial
@synthesize ok, helpful, plot, tip, giveTry;


-(IBAction)delay:(id)sender{
    time = 0;
    can++;
    if (can == 1) {
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(atme) userInfo:nil repeats:YES];
    }
}
-(void)atme{
    time++;
    if (time == 1) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.8];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        
        CGPoint position = CGPointMake(160.0f, 378.0f);
        ok.center = position;
        [UIView commitAnimations];
    }
    if (time == 9) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        
        CGPoint position = CGPointMake(160.0f, 650.0f);
        ok.center = position;
        [UIView commitAnimations];
    }
    if (time == 12) {
        helpful.hidden = TRUE;
        tip.hidden = TRUE;
        plot.hidden = TRUE;
        giveTry.hidden = FALSE;
    }
    if (time == 42) {
        [timer invalidate];
        tutslide *Sword = [[tutslide alloc] initWithNibName:nil bundle:nil];
        [self presentModalViewController:Sword animated:NO];
    }

}




-(void)counting{
    time++;
    if (time == 1) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        
        CGPoint position = CGPointMake(161.0f, 66.0f);
        helpful.center = position;
        [UIView commitAnimations];
    }
    if (time == 4) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        
        CGPoint position = CGPointMake(163.0f, 137.0f);
        tip.center = position;
        [UIView commitAnimations];
    }
    if (time == 10) {
        [UILabel beginAnimations:nil context:NULL];
        [UILabel setAnimationDelegate:self];
        [UILabel setAnimationDuration:3];
        [plot setAlpha:1];
        [UILabel commitAnimations];
    }
    if (time == 28) {
        [UIView beginAnimations:nil context:NULL];     
        [UIView setAnimationDuration:.3];
        [UIView setAnimationRepeatCount:1];
        [UIView setAnimationRepeatAutoreverses:NO];
        
        CGPoint position = CGPointMake(160.0f, 398.0f);
        ok.center = position;
        [UIView commitAnimations];
        [timer invalidate];
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
    if (canSound == 0 ) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate qMusic];
        
    }
    
    
    giveTry.hidden = TRUE;
    [giveTry setFont:[UIFont fontWithName:@"Krona One" size:20]];
    [plot setFont:[UIFont fontWithName:@"Krona One" size:14]];
    timer = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(counting) userInfo:nil repeats:YES];
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
