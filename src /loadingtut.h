//
//  loadingtut.h
//  Slide Masters
//
//  Created by Blake Campbell on 1/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loadingtut : UIViewController{
    IBOutlet UILabel *loading;
    NSTimer *mytimer;
    int a;
    int b;
    
}
@property(nonatomic, retain) IBOutlet UILabel *loading;
@end
