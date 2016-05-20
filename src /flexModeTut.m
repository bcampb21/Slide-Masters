//
//  flexModeTut.m
//  Slide Masters
//
//  Created by Blake Campbell on 6/29/13.
//
//

#import "flexModeTut.h"
#import "flexModeMenu.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )
@interface flexModeTut ()

@end

@implementation flexModeTut


-(IBAction)next:(id)sender{
    number++;
    if (number == 1) {
        CGPoint position = CGPointMake(66.0f, 66.0f);
        info.center = position;
        info.text = [NSString stringWithFormat:@"Score"];
    }
    if (number == 2) {
        CGPoint position = CGPointMake(82.0f, 70.0f);
        info.center = position;

        info.text = [NSString stringWithFormat:@"Your score will be added to the Flex Level Meter"];
    }
    if (number == 3) {
        CGPoint position = CGPointMake(160.0f, 52.0f);
        info.center = position;
        info.text = [NSString stringWithFormat:@"How much time is left"];
    }
    if (number == 4) {
        CGPoint position = CGPointMake(269.0f, 52.0f);
        info.center = position;
        info.text = [NSString stringWithFormat:@"Combo"];
    }

    if (number == 5) {
        CGPoint position = CGPointMake(205.0f, 104.0f);
        info.center = position;
        info.text = [NSString stringWithFormat:@"Power-Ups"];
    }

    if (number == 6) {
        info.text = [NSString stringWithFormat:@"Mystery Spheres also come in this form"];
    }

    if (number == 7) {
        if (IS_WIDESCREEN) {
            CGPoint position = CGPointMake(234.0f, 353.0f);
            info.center = position;
        }
        else{
            CGPoint position = CGPointMake(234.0f, 301.0f);
            info.center = position;
        }
        info.text = [NSString stringWithFormat:@"Don't touch the sliders with red tracks"];
    }
    if (number == 8) {
        info.text = [NSString stringWithFormat:@"You will lose time"];
    }
    if (number == 9) {
        if (IS_WIDESCREEN) {
            CGPoint position = CGPointMake(53.0f, 516.0f);
            info.center = position;
        }
        else{
            CGPoint position = CGPointMake(53.0f, 428.0f);
            info.center = position;
        }
       
        info.text = [NSString stringWithFormat:@"Pause          Button"];
    }
    if (number == 10) {
        flexModeMenu *Sword = [[flexModeMenu alloc] initWithNibName:nil bundle:nil];
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    if (IS_WIDESCREEN) {
        CGPoint position = CGPointMake(160.0f, 470.0f);
        nextButton.center = position;
        CGPoint position1 = CGPointMake(160.0f, 386.0f);
        info.center = position1;
    }
    else{
        CGPoint position = CGPointMake(160.0f, 420.0f);
        nextButton.center = position;
        CGPoint position1 = CGPointMake(160.0f, 336.0f);
        info.center = position1;
    }
    
        [info setFont:[UIFont fontWithName:@"Krona One" size:12]];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
