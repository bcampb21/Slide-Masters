//
//  ultimateIntro.m
//  Slide Masters
//
//  Created by Blake Campbell on 3/31/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ultimateIntro.h"
#import "levelselect.h"
#import "FinalStage.h"
#import "finalStageTutorial.h"
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 )< DBL_EPSILON )

@implementation ultimateIntro
@synthesize text, master,textBox,tokenText,tokenBorder,token, mastersToken,backG;

-(void)counting{
    count++;
    if (method == 0) {
        if (count == 10) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(153.0f, 210.0f);
            master.center = position;
            [UIView commitAnimations];
        }
        if (count == 30) {
            textBox.hidden = FALSE;
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"C"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"Co"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"Con"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"Cong"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"Congr"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"Congra"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"Congrat"];
        }
        if (count == 38) {
            text.text = [NSString stringWithFormat:@"Congratu"];
        }
        if (count == 39) {
            text.text = [NSString stringWithFormat:@"Congratul"];
        }
        if (count == 40) {
            text.text = [NSString stringWithFormat:@"Congratula"];
        }
        if (count == 41) {
            text.text = [NSString stringWithFormat:@"Congratulat"];
        }
        if (count == 42) {
            text.text = [NSString stringWithFormat:@"Congratulati"];
        }
        if (count == 43) {
            text.text = [NSString stringWithFormat:@"Congratulatio"];
        }
        if (count == 44) {
            text.text = [NSString stringWithFormat:@"Congratulation"];
        }
        if (count == 45) {
            text.text = [NSString stringWithFormat:@"Congratulations"];
        }
        if (count == 46) {
            text.text = [NSString stringWithFormat:@"Congratulations!"];
        }
        if (count == 47) {
            text.text = [NSString stringWithFormat:@"Congratulations! Y"];
        }
        if (count == 48) {
            text.text = [NSString stringWithFormat:@"Congratulations! Yo"];
        }
        if (count == 49) {
            text.text = [NSString stringWithFormat:@"Congratulations! You"];
        }
        if (count == 50) {
            text.text = [NSString stringWithFormat:@"Congratulations! You h"];
        }
        if (count == 51) {
            text.text = [NSString stringWithFormat:@"Congratulations! You ha"];
        }
        if (count == 52) {
            text.text = [NSString stringWithFormat:@"Congratulations! You hav"];
        }
        if (count == 53) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have"];
        }
        if (count == 54) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have m"];
        }
        if (count == 55) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have ma"];
        }
        if (count == 56) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have mad"];
        }
        if (count == 57) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made"];
        }
        if (count == 58) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made i"];
        }
        if (count == 59) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it"];
        }
        if (count == 60) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it t"];
        }
        if (count == 61) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to"];
        }
        if (count == 62) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to t"];
        }
        if (count == 63) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to th"];
        }
        if (count == 64) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the"];
        }
        if (count == 65) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the f"];
        }
        if (count == 66) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the fi"];
        }
        if (count == 67) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the fin"];
        }
        if (count == 68) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the fina"];
        }
        if (count == 69) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final"];
        }
        if (count == 70) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final c"];
        }
        if (count == 71) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final ch"];
        }
        if (count == 72) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final cha"];
        }
        if (count == 73) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final chal"];
        }
        if (count == 74) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final chall"];
        }
        if (count == 75) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final challe"];
        }
        if (count == 76) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final challen"];
        }
        if (count == 77) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final challeng"];
        }
        if (count == 78) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final challenge"];
        }
        if (count == 79) {
            text.text = [NSString stringWithFormat:@"Congratulations! You have made it to the final challenge."];
        }
        if (count == 120) {
            method = 1;
            count = 0;
        }
        
    }
    if (method == 1) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"I a"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"I am"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"I am a"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"I am af"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"I am afr"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"I am afra"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"I am afrai"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"I am afraid"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"I am afraid t"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"I am afraid th"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"I am afraid thi"];
        }
        if (count == 13) {
            text.text = [NSString stringWithFormat:@"I am afraid this"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"I am afraid this w"];
        }
        if (count == 15) {
            text.text = [NSString stringWithFormat:@"I am afraid this wi"];
        }
        if (count == 16) {
            text.text = [NSString stringWithFormat:@"I am afraid this wil"];
        }
        if (count == 17) {
            text.text = [NSString stringWithFormat:@"I am afraid this will"];
        }
        if (count == 18) {
            text.text = [NSString stringWithFormat:@"I am afraid this will b"];
        }
        if (count == 19) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be"];
        }
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be t"];
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be th"];
        }
        if (count == 22) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the"];
        }
        if (count == 23) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the m"];
        }
        if (count == 24) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the mo"];
        }
        if (count == 25) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the mos"];
        }
        if (count == 26) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most"];
        }
        if (count == 26) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most d"];
        }
        if (count == 27) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most di"];
        }
        if (count == 28) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most dif"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most diff"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most diffi"];
        }
        if (count == 30) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most diffic"];
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficu"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficul"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult t"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult tr"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult tri"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult tria"];
        }
        if (count == 38) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult trial"];
        }
        if (count == 39) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult trial y"];
        }
        if (count == 40) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult trial ye"];
        }
        if (count == 41) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult trial yet"];
        }
        if (count == 42) {
            text.text = [NSString stringWithFormat:@"I am afraid this will be the most difficult trial yet."];
        }
        if (count == 100) {
            method = 2;
            count = 0;
        }

    }
    if (method == 2) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"F"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"Fo"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"For"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"For g"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"For ge"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"For get"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"For gett"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"For getti"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"For gettin"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"For getting"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"For getting t"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"For getting th"];
        }
        if (count == 13) {
            text.text = [NSString stringWithFormat:@"For getting thi"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"For getting this"];
        }
        if (count == 15) {
            text.text = [NSString stringWithFormat:@"For getting this f."];
        }
        if (count == 16) {
            text.text = [NSString stringWithFormat:@"For getting this fa"];
        }
        if (count == 17) {
            text.text = [NSString stringWithFormat:@"For getting this far"];
        }
        if (count == 18) {
            text.text = [NSString stringWithFormat:@"For getting this far y"];
        }
        if (count == 19) {
            text.text = [NSString stringWithFormat:@"For getting this far yo"];
        }
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"For getting this far you"];
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"For getting this far you h"];
        }
        if (count == 22) {
            text.text = [NSString stringWithFormat:@"For getting this far you ha"];
        }
        if (count == 23) {
            text.text = [NSString stringWithFormat:@"For getting this far you hav"];
        }
        if (count == 24) {
            text.text = [NSString stringWithFormat:@"For getting this far you have"];
        }
        if (count == 25) {
            text.text = [NSString stringWithFormat:@"For getting this far you have b"];
        }
        if (count == 27) {
            text.text = [NSString stringWithFormat:@"For getting this far you have be"];
        }
        if (count == 28) {
            text.text = [NSString stringWithFormat:@"For getting this far you have bee"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been"];
        }
        if (count == 30) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been g"];
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been gi"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been giv"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been give"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given t"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given tw"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two"];
        }
        if (count == 38) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two m"];
        }
        if (count == 39) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two ma"];
        }
        if (count == 40) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two mas"];
        }
        if (count == 41) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two mast"];
        }
        if (count == 42) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two maste"];
        }
        if (count == 43) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master"];
        }
        if (count == 44) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master t"];
        }
        if (count == 45) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master to"];
        }
        if (count == 46) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master tok"];
        }
        if (count == 48) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master toke"];
        }
        if (count == 49) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master token"];
        }
        if (count == 50) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master tokens"];
        }
        if (count == 51) {
            text.text = [NSString stringWithFormat:@"For getting this far you have been given two master tokens."];
        }
        if (count == 70) {
            method = 3;
            count = 0;
            
        }
    }
    if (method == 3) {
    if (count == 1) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
        if (IS_WIDESCREEN) {
            CGPoint position = CGPointMake(154.0f, 542.0f);
            token.center = position;
        }
        else{
            CGPoint position = CGPointMake(154.0f, 453.0f);
            token.center = position;
        }
            [UIView commitAnimations];
            
            tokenText.text = [NSString stringWithFormat:@"2"];
            
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:1];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
        if (IS_WIDESCREEN) {
            CGPoint position1 = CGPointMake(186.0f, 542.0f);
            tokenText.center = position1;
        }
        else{
            CGPoint position1 = CGPointMake(186.0f, 454.0f);
            tokenText.center = position1;
        }
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
        if (IS_WIDESCREEN) {
            CGPoint position2 = CGPointMake(170.0f, 542.0f);
            tokenBorder.center = position2;
        }
        else{
            CGPoint position2 = CGPointMake(170.0f, 454.0f);
            tokenBorder.center = position2;
        }
            [UIView commitAnimations];
        }
    if (count == 42) {
            count = 0;
            method = 4;
        }
    }
    if (method == 4) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"T"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"Th"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"The"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"Thes"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"These"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"These t"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"These to"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"These tok"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"These toke"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"These token"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"These tokens"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"These tokens c"];
        }
        if (count == 13) {
            text.text = [NSString stringWithFormat:@"These tokens ca"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"These tokens can"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"These tokens can b"];
        }
        if (count == 15) {
            text.text = [NSString stringWithFormat:@"These tokens can be"];
        }
        if (count == 16) {
            text.text = [NSString stringWithFormat:@"These tokens can be u"];
        }
        if (count == 17) {
            text.text = [NSString stringWithFormat:@"These tokens can be us"];
        }
        if (count == 18) {
            text.text = [NSString stringWithFormat:@"These tokens can be use"];
        }
        if (count == 19) {
            text.text = [NSString stringWithFormat:@"These tokens can be used"];
        }
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"These tokens can be used f"];
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"These tokens can be used fo"];
        }
        if (count == 22) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for"];
        }
        if (count == 23) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for a"];
        }
        if (count == 24) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for at"];
        }
        if (count == 25) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for att"];
        }
        if (count == 26) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for atte"];
        }
        if (count == 27) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attem"];
        }
        if (count == 28) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attemp"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempt"];
        }
        if (count == 30) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts"];
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts a"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at t"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at th"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the M"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Ma"];
        }
        if (count == 38) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Mas"];
        }
        if (count == 39) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Mast"];
        }
        if (count == 40) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Maste"];
        }
        if (count == 41) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master"];
        }
        if (count == 42) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master'"];
        }
        if (count == 43) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's"];
        }
        if (count == 44) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's C"];
        }
        if (count == 45) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's C"];
        }
        if (count == 46) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Ch"];
        }
        if (count == 47) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Cha."];
        }
        if (count == 48) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Chal"];
        }
        if (count == 49) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Chall"];
        }
        if (count == 50) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Challe"];
        }
        if (count == 51) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Challen"];
        }
        if (count == 52) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Challeng"];
        }
        if (count == 53) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Challenge"];
        }
        if (count == 54) {
            text.text = [NSString stringWithFormat:@"These tokens can be used for attempts at the Master's Challenge."];
        }
        if (count == 65) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position = CGPointMake(154.0f, 600.0f);
            token.center = position;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:1];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            
            CGPoint position1 = CGPointMake(186.0f, 600.0f);
            tokenText.center = position1;
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position2 = CGPointMake(170.0f, 600.0f);
            tokenBorder.center = position2;
            [UIView commitAnimations];
        }
        if (count == 75) {
            count = 0;
            method = 5;
        }

    }
    if (method == 5) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"I"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"I c"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"I co"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"I com"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"I comp"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"I compl"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"I comple"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"I complet"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"I complete"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"I completed"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"I completed t"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"I completed th"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"I completed the"];
        }
        if (count == 15) {
            text.text = [NSString stringWithFormat:@"I completed the c"];
        }
        if (count == 16) {
            text.text = [NSString stringWithFormat:@"I completed the ch"];
        }
        if (count == 17) {
            text.text = [NSString stringWithFormat:@"I completed the cha"];
        }
        if (count == 18) {
            text.text = [NSString stringWithFormat:@"I completed the chal"];
        }
        if (count == 19) {
            text.text = [NSString stringWithFormat:@"I completed the chall"];
        }
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"I completed the challe"];
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"I completed the challen"];
        }
        if (count == 22) {
            text.text = [NSString stringWithFormat:@"I completed the challeng"];
        }
        if (count == 23) {
            text.text = [NSString stringWithFormat:@"I completed the challenge"];
        }
        if (count == 24) {
            text.text = [NSString stringWithFormat:@"I completed the challenge o"];
        }
        if (count == 25) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on"];
        }
        if (count == 26) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on t"];
        }
        if (count == 27) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on th"];
        }
        if (count == 28) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the f"];
        }
        if (count == 30) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the fi"];
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the fir"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the firs"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the first"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the first t"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the first tr"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the first try"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"I completed the challenge on the first try."];
        }
        if (count == 67) {
            count = 0;
            method = 6;
        }

    }
    if (method == 6) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"S"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"So"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"So."];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"So.."];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"So..."];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"So...."];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"So....."];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"So......"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"So......."];
        }
        if (count == 22) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:4];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(242.0f, 249.0f);
            mastersToken.center = position;
            [UIView commitAnimations];
        }
        if (count == 102) {
            count = 0;
            method = 7;
        }
    }
    if (method == 7) {
        if (count == 1) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(242.0f, 205.0f);
            mastersToken.center = position;
            [UIView commitAnimations];
        }
        if (count == 2) {
             text.text = [NSString stringWithFormat:@"I"];
            }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"I h"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"I ha"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"I hav"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"I have"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"I have a"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"I have an"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"I have an e"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"I have an ex"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"I have an ext"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"I have an extr"];
        }
        if (count == 13) {
            text.text = [NSString stringWithFormat:@"I have an extra"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"I have an extra."];
        }
        if (count == 20) {
            count = 0;
            method = 8;
        }       
    }
    if (method == 8) {
        if (count == 1) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(242.0f, 249.0f);
            mastersToken.center = position;
            [UIView commitAnimations];
        }
        if (count == 20) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            CGPoint position = CGPointMake(242.0f, 205.0f);
            mastersToken.center = position;
            [UIView commitAnimations];
            tokenTimes++;
            if (tokenTimes == 1) {
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:1];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (IS_WIDESCREEN) {
                    CGPoint position = CGPointMake(154.0f, 542.0f);
                    token.center = position;
                }
                else{
                    CGPoint position = CGPointMake(154.0f, 453.0f);
                    token.center = position;
                }
                [UIView commitAnimations];
                
                tokenText.text = [NSString stringWithFormat:@"2"];
                
                [UILabel beginAnimations:nil context:NULL];
                [UILabel setAnimationDuration:1];
                [UILabel setAnimationRepeatCount:1];
                [UILabel setAnimationRepeatAutoreverses:NO];
                if (IS_WIDESCREEN) {
                    CGPoint position1 = CGPointMake(186.0f, 542.0f);
                    tokenText.center = position1;
                }
                else{
                    CGPoint position1 = CGPointMake(186.0f, 454.0f);
                    tokenText.center = position1;
                }
                [UILabel commitAnimations];
                
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:1];
                [UIView setAnimationRepeatCount:1];
                [UIView setAnimationRepeatAutoreverses:NO];
                if (IS_WIDESCREEN) {
                    CGPoint position2 = CGPointMake(170.0f, 542.0f);
                    tokenBorder.center = position2;
                }
                else{
                    CGPoint position2 = CGPointMake(170.0f, 454.0f);
                    tokenBorder.center = position2;
                }
                [UIView commitAnimations];
            }
            if (tokenTimes < 2) {
                count = -20;
            }
        }
        if (count == 40) {
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            if (IS_WIDESCREEN) {
                CGPoint position = CGPointMake(154.0f, 542.0f);
                mastersToken.center = position;
            }
            else{
                CGPoint position = CGPointMake(154.0f, 453.0f);
                mastersToken.center = position;
            }
            [UIView commitAnimations];
        }
        if (count == 60) {
            tokenText.text = [NSString stringWithFormat:@"3"];
            count = 0;
            method = 9;
        }
    }
    if (method == 9) {
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"U"];
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position = CGPointMake(154.0f, 620.0f);
            token.center = position;
            [UIView commitAnimations];
            
            [UILabel beginAnimations:nil context:NULL];     
            [UILabel setAnimationDuration:1];
            [UILabel setAnimationRepeatCount:1];
            [UILabel setAnimationRepeatAutoreverses:NO];
            
            CGPoint position1 = CGPointMake(186.0f, 620.0f);
            tokenText.center = position1;
            [UILabel commitAnimations];
            
            [UIView beginAnimations:nil context:NULL];     
            [UIView setAnimationDuration:1];
            [UIView setAnimationRepeatCount:1];
            [UIView setAnimationRepeatAutoreverses:NO];
            
            CGPoint position2 = CGPointMake(170.0f, 620.0f);
            tokenBorder.center = position2;
            [UIView commitAnimations];
            mastersToken.hidden = TRUE;
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"Us"];
        }
        if (count == 22) {
            text.text = [NSString stringWithFormat:@"Use"];
        }
        if (count == 23) {
            text.text = [NSString stringWithFormat:@"Use t"];
        }
        if (count == 24) {
            text.text = [NSString stringWithFormat:@"Use th"];
        }
        if (count == 25) {
            text.text = [NSString stringWithFormat:@"Use the"];
        }
        if (count == 26) {
            text.text = [NSString stringWithFormat:@"Use thes"];
        }
        if (count == 27) {
            text.text = [NSString stringWithFormat:@"Use these"];
        }
        if (count == 28) {
            text.text = [NSString stringWithFormat:@"Use these t"];
        }
        if (count == 29) {
            text.text = [NSString stringWithFormat:@"Use these to"];
        }
        if (count == 30) {
            text.text = [NSString stringWithFormat:@"Use these tok"];
        }
        if (count == 31) {
            text.text = [NSString stringWithFormat:@"Use these toke"];
        }
        if (count == 32) {
            text.text = [NSString stringWithFormat:@"Use these token"];
        }
        if (count == 33) {
            text.text = [NSString stringWithFormat:@"Use these tokens"];
        }
        if (count == 34) {
            text.text = [NSString stringWithFormat:@"Use these tokens w"];
        }
        if (count == 35) {
            text.text = [NSString stringWithFormat:@"Use these tokens wi"];
        }
        if (count == 36) {
            text.text = [NSString stringWithFormat:@"Use these tokens wis"];
        }
        if (count == 37) {
            text.text = [NSString stringWithFormat:@"Use these tokens wise"];
        }
        if (count == 38) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisel"];
        }
        if (count == 39) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely"];
        }
        if (count == 40) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely a"];
        }
        if (count == 41) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely an"];
        }
        if (count == 42) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and"];
        }
        if (count == 43) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and f"];
        }
        if (count == 44) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fu"];
        }
        if (count == 45) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and ful"];
        }
        if (count == 46) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulf"];
        }
        if (count == 47) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfi"];
        }
        if (count == 48) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil"];
        }
        if (count == 49) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil y"];
        }
        if (count == 50) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil yo"];
        }
        if (count == 51) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil you"];
        }
        if (count == 52) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your"];
        }
        if (count == 53) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your d"];
        }
        if (count == 54) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your de"];
        }
        if (count == 55) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your des"];
        }
        if (count == 56) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your dest"];
        }
        if (count == 57) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your desti"];
        }
        if (count == 58) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your destin"];
        }
        if (count == 59) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your destiny"];
        }
        if (count == 60) {
            text.text = [NSString stringWithFormat:@"Use these tokens wisely and fulfil your destiny."];
        }
        if (count == 110) {
            count = 0;
            method = 10;
        }
    }
    if (method == 10) {
        if (count == 1) {
            text.text = [NSString stringWithFormat:@"B"];
        }
        if (count == 2) {
            text.text = [NSString stringWithFormat:@"Be"];
        }
        if (count == 3) {
            text.text = [NSString stringWithFormat:@"Bec"];
        }
        if (count == 4) {
            text.text = [NSString stringWithFormat:@"Beco"];
        }
        if (count == 5) {
            text.text = [NSString stringWithFormat:@"Becom"];
        }
        if (count == 6) {
            text.text = [NSString stringWithFormat:@"Become"];
        }
        if (count == 7) {
            text.text = [NSString stringWithFormat:@"Become t"];
        }
        if (count == 8) {
            text.text = [NSString stringWithFormat:@"Become th"];
        }
        if (count == 9) {
            text.text = [NSString stringWithFormat:@"Become the"];
        }
        if (count == 10) {
            text.text = [NSString stringWithFormat:@"Become the S"];
        }
        if (count == 11) {
            text.text = [NSString stringWithFormat:@"Become the SL"];
        }
        if (count == 12) {
            text.text = [NSString stringWithFormat:@"Become the SLI"];
        }
        if (count == 13) {
            text.text = [NSString stringWithFormat:@"Become the SLID"];
        }
        if (count == 14) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE"];
        }
        if (count == 15) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE M"];
        }
        if (count == 16) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MA"];
        }
        if (count == 17) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MAS"];
        }
        if (count == 18) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MAST"];
        }
        if (count == 19) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MASTE"];
        }
        if (count == 20) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MASTER"];
        }
        if (count == 21) {
            text.text = [NSString stringWithFormat:@"Become the SLIDE MASTER!"];
        }
        if (count == 70) {
            [UIView beginAnimations:nil context:NULL];
            [UIView setAnimationDelegate:self];
            [UIView setAnimationDuration:2.8];
            [text setAlpha:0];
            [master setAlpha:0];
            [textBox setAlpha:0];
            [backG setAlpha:0];
            [UIView commitAnimations];

        }
        if (count == 126) {
            slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate stopMusic];
            finalStageTutorial *Sword = [[finalStageTutorial alloc] initWithNibName:nil bundle:nil];
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
    [tokenText setFont:[UIFont fontWithName:@"Krona One" size:14]];
    canSound =[[NSUserDefaults standardUserDefaults] integerForKey:@"sound"];
    
    if (canSound == 0 ) {
        slidemastersAppDelegate *appDelegate = (slidemastersAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate stopMusic];
        [appDelegate qStoryMusic];
        
    }

    
    int a = 3;
    [[NSUserDefaults standardUserDefaults] setInteger:a forKey:@"tokens"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    textBox.hidden = TRUE;
    timer = [NSTimer scheduledTimerWithTimeInterval:.05 target:self selector:@selector(counting) userInfo:nil repeats:YES];

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
