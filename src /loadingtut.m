//
//  loadingtut.m
//  Slide Masters
//
//  Created by Blake Campbell on 1/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "loadingtut.h"
#import "tutorial.h"
@implementation loadingtut
@synthesize loading;

-(void)counting{
    a++;
    if (a == 1) { loading.text = [NSString stringWithFormat:@"Loading"];}
    if (a == 2) { loading.text = [NSString stringWithFormat:@"Loading."];}
    if (a == 3) { loading.text = [NSString stringWithFormat:@"Loading.."];}
    if (a == 4) { loading.text = [NSString stringWithFormat:@"Loading..."]; 
        a =0;
        b++;
        if (b==2) {
            [mytimer invalidate];
            tutorial *Sword = [[tutorial alloc] initWithNibName:nil bundle:nil];
            [self presentModalViewController:Sword animated:NO];
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
     mytimer = [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(counting) userInfo:nil repeats:YES];
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
